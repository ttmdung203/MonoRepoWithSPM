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
        .binaryTarget(name: "FirstLibraryZip",
                      url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.1/FirstLibrary.zip",
                      checksum: "338201d3ac6ed0cfd15eb2522b109bc192937e330bd46b2292d00fa0bc4dff41"),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]),
    ]
)
