// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SwiftyTimer",
    products: [
        .library(
            name: "SwiftyTimer",
            targets: ["SwiftyTimer"]),
    ],
    targets: [
        .target(name: "SwiftyTimer",
            path: "Sources"),
    ]
)
