// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackAppLovinAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackAppLovinAdapter",
            targets: ["BlueStackAppLovinAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "12.6.1"),
        .package(url: "https://github.com/azerion/BlueStackSDK.git", from: "5.1.1"),
    ],
    targets: [
        .target(name: "BlueStackAppLovinAdapterTarget",
                        dependencies: [
                            .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS])),
                            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package", condition: .when(platforms: [.iOS])),
                            .target(name: "BlueStackAppLovinAdapter", condition: .when(platforms: [.iOS]))
                        ],
                       path: "BlueStackAppLovinAdapterWrapper"),
        .binaryTarget(name: "BlueStackAppLovinAdapter", path: "BlueStackAppLovinAdapter.xcframework")
    ]
)
