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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.14.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "RidiOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-ridi-ios/releases/download/0.12.0/RidiOfwModule.zip",
            checksum: "a4e3797d2ee0af57234169104dccc070ce7c32e180687349f4445645e7152e31"
        ),
        .target(
            name: "RidiOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
