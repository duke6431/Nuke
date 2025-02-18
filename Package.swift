// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Nuke",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "Nuke", targets: ["Nuke"]),
        .library(name: "NukeUI", targets: ["NukeUI"]),
        .library(name: "NukeVideo", targets: ["NukeVideo"]),
        .library(name: "NukeExtensions", targets: ["NukeExtensions"]),

        .library(name: "Nuke-Dynamic", type: .dynamic, targets: ["Nuke"]),
        .library(name: "NukeUI-Dynamic", type: .dynamic, targets: ["NukeUI"]),
        .library(name: "NukeVideo-Dynamic", type: .dynamic, targets: ["NukeVideo"]),
        .library(name: "NukeExtensions-Dynamic", type: .dynamic, targets: ["NukeExtensions"])
    ],
    targets: [
        .target(name: "Nuke"),
        .target(name: "NukeUI", dependencies: ["Nuke"]),
        .target(name: "NukeVideo", dependencies: ["Nuke"]),
        .target(name: "NukeExtensions", dependencies: ["Nuke"])
    ]
)
