// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SwiftyTimer",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .watchOS(.v3),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SwiftyTimer iOS",
            targets: ["SwiftyTimer"]),
        .library(
            name: "SwiftyTimer macOS",
            targets: ["SwiftyTimer OS X"]),
        .library(
            name: "SwiftyTimer tvOS",
            targets: ["SwiftyTimer tvOS"]),
        .library(
            name: "SwiftyTimer watchOS",
            targets: ["SwiftyTimer watchOS"]),
    ],
    targets: [
        .target(name: "SwiftyTimer",
            path: "Sources",
            exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer OS X",
            path: "Sources",
            exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer tvOS",
            path: "Sources",
            exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer watchOS",
            path: "Sources",
            exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
    ]
)
