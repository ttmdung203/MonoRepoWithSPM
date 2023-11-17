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
                      url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.0/FirstLibrary.zip",
                      checksum: "cc06ab9aec237a94fde36122ff05f7e20b20dbb86e3b4d4be1327c34172717d7"),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]),
    ]
)
