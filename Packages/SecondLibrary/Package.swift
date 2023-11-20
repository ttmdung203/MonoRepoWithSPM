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
            url: "https://github.com/ttmdung203/MonoRepoWithSPM/releases/download/1.0.7/FirstLibrary.zip",
            from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SecondLibrary",
            dependencies: ["FirstLibrary"]),
        .testTarget(
            name: "SecondLibraryTests",
            dependencies: ["SecondLibrary"]),
    ]
)
