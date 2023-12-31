// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomFramework",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CustomFramework",
            targets: ["CustomFramework"]),
        .library(
            name: "CustomFramework2",
            targets: ["CustomFramework2"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "CustomFramework",
            path: "./Sources/CustomFramework.xcframework"
        ),
        .binaryTarget(
            name: "CustomFramework2",
            path: "./Sources/CustomFramework2.xcframework"
        )
    ]
)
