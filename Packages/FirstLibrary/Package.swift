// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FirstLibrary",
            targets: ["FirstLibrary"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FirstLibrary"),
        .binaryTarget(
            name: "BinaryFirstLibrary",
            url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.1/BinaryFirstLibrary.zip",
            checksum: "2eee4326a625f02d57c828bf1a2244e98cd99d6dc762d95a1e539f600235032b"),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]),
    ]
)
