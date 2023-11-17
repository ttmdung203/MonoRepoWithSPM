// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstLibrary",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FirstLibrary",
            targets: ["FirstLibrary"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "FirstLibrary",
            url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.4/FirstLibrary.zip",
            checksum: "869c55c65e7b39417da6be31f0f1af5e9cd2c472ac5b7ed74518dac885053b23"),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]),
    ]
)
