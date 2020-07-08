// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SwiftyTimer",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_9),
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
                exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer OS X",
                exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer tvOS",
                exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
        .target(name: "SwiftyTimer watchOS",
                exclude: ["Sources/Info.plist", "Sources/SwiftyTimer.h", "SwiftyTimerTests"]),
    ]
)
