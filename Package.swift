// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLovinMediationGoogleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationGoogleAdapter",
            targets: ["AppLovinMediationGoogleAdapterTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.0.0"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            .exact("12.12.0")
        )
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/google-adapter/AppLovinMediationGoogleAdapter-12.12.0.0.zip",
            checksum: "28432e907c364e2ca1ec3f7434c277395c3c8b75246245a182ff959a9fc8511b"
        )
    ]
)
