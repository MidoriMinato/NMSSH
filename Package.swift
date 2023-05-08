// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMSSH",
    products: [
        .library(
            name: "NMSSH",
            targets: ["NMSSH"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NMSSH",
            path: "Sources/NMSSH",
            publicHeadersPath: "include"
        ),
    ]
)
