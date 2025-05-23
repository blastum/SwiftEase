// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftEase",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftEase",
            targets: ["SwiftEase"]
        ),
    ],
    dependencies: [
        // Add any external dependencies here
    ],
    targets: [
        .target(
            name: "SwiftEase",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftEaseTests",
            dependencies: ["SwiftEase"]
        ),
    ]
) 