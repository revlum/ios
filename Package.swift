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
            checksum: "ebca2016309eb8c458d60f2ba031940405d606917fbae416a446c1a6eda38fe9"
        )
    ]
)
