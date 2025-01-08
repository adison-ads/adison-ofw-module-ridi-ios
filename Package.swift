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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.9.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "RidiOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-ridi-ios/releases/download/0.11.2/RidiOfwModule.zip",
            checksum: "900c877f46efbcb9ee5782ddf1c2ed85ac60ed5739f99995584223fff210f33b"
        ),
        .target(
            name: "RidiOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
