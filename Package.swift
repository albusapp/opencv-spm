// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.8.1"
let checksum = "9bfe40b0534a0d13a9908c3906d81a577ee5f24be4a19d71e21cf4039809a4bb"

let package = Package(
    name: "OpenCV",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["opencv2", "opencv2-dependencies"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/mattalbus/opencv-spm/releases/download/\(version)/opencv2.xcframework.zip",
                      checksum: checksum),
        .target(
            name: "opencv2-dependencies",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Accelerate"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
