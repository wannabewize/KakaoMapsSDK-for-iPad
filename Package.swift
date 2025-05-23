// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoMapsSDK-for-SwiftPlayground",
    platforms: [.iOS(.v14)],
    
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KakaoMapsSDK-for-SwiftPlayground",
            targets: ["KakaoMapsSDK-SPM"])
        // .library(
        //     name: "KakaoMapsSDK-SPM-Dynamic",
        //     type: .dynamic,
        //     targets: ["KakaoMapsSDK-SPM"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "KakaoMapsSDK-SPM",
            dependencies: ["framework"],
            resources: [.copy("KakaoMapsSDKBundle.bundle/assets")]),
        .binaryTarget(
            name: "framework",
            path: "BinaryFramework/KakaoMapsSDK.xcframework")
    ],
    swiftLanguageVersions: [.v5]
)
