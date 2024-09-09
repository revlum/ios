// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RevlumOfferwallSDK",
    platforms: [
        .macOS(.v12), .iOS(.v16),
    ],
    products: [
        .library(
            name: "RevlumOfferwallSDK", type: .dynamic,
            targets: ["RevlumOfferwallSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "RevlumOfferwallSDK",
            url:"https://github.com/revlum/ios/releases/download/v1.0.0/RevlumOfferwallSDK.xcframework.zip",
            checksum: "780bb8ab8c3f08b433953371207e85857e6defa59b4beee3aa378da65cdd0989"
        ),
    ]
)
