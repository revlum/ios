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
            checksum: "e508f4ffebae3d5493dbfae8169f0ea9ede771bb335b17c40e443c737d36af15"
        )
    ]
)
