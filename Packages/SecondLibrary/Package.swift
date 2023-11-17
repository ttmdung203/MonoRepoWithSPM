// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SecondLibrary",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SecondLibrary",
            targets: ["SecondLibrary"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ttmdung203/MonoRepoWithSPM/tree/main/Packages/FirstLibrary",
            from: "1.0.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SecondLibrary",
            dependencies: ["FirstLibrary"]),
//        .binaryTarget(name: "SecondLibraryZip",
//                      url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.0/SecondLibrary.zip",
//                      checksum: "cc06ab9aec237a94fde36122ff05f7e20b20dbb86e3b4d4be1327c34172717d7"),
        .testTarget(
            name: "SecondLibraryTests",
            dependencies: ["SecondLibrary"]),
    ]
)
