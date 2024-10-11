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
            name: "RevlumOfferwallSDK", 
            targets: ["RevlumOfferwallSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "RevlumOfferwallSDK",
            url: "https://github.com/revlum/ios/releases/download/v1.0.0/RevlumOfferwallSDK.xcframework.zip",
            checksum: "30bc2d9bc56e09739936201b251365eb2e830d1162b04dcbde3ef9c1057dd43e"
        )
    ]
)
