// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RidiOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RidiOfwModule",
            targets: ["RidiOfwModule", "RidiOfwModuleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.16.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "RidiOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-ridi-ios/releases/download/0.13.0/RidiOfwModule.zip",
            checksum: "91e220d1032a526c8678fc8e4ed9cc7060d53c5076ab556314b3c938fb637bc2"
        ),
        .target(
            name: "RidiOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
