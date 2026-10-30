// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMobileFuseAdapter",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CloudXMobileFuseAdapter",
            targets: ["CloudXMobileFuseAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm.git",
            exact: "1.13.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMobileFuseAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-mobilefuse/releases/download/binary/1130000.0.0/CloudXMobileFuseAdapter.xcframework.zip",
            checksum: "ef5611c36bf585c30f53c4625223113979c895424987e58fd84bdc1f210c7918"
        ),
        .target(
            name: "CloudXMobileFuseAdapterPackage",
            dependencies: [
                "CloudXMobileFuseAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm"),
            ]
        ),
        .testTarget(
            name: "CloudXMobileFuseAdapterSwiftTests",
            dependencies: ["CloudXMobileFuseAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXMobileFuseAdapterObjCTests",
            dependencies: ["CloudXMobileFuseAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
