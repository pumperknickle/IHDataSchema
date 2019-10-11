// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IHDataSchema",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "IHDataSchema",
            targets: ["IHDataSchema"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor", from: "3.3.1"),
        .package(url: "https://github.com/vapor/fluent-postgresql", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "IHDataSchema",
            dependencies: ["FluentPostgreSQL", "Vapor"]),
        .testTarget(
            name: "IHDataSchemaTests",
            dependencies: ["IHDataSchema"]),
    ]
)
