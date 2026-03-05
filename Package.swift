// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationGoogleAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationGoogleAdapter",
            targets: ["AppLovinMediationGoogleAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.1.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationGoogleAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationGoogleAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/google-adapter/AppLovinMediationGoogleAdapter-13.1.0.1.zip",
            checksum: "d30671bd7395b7b521d39751154f8cf3f883e7e6df523121a03169f415bb43a7"
        )
    ]
)
