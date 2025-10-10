// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobileFull",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "YandexMapsMobileFull",
            type: .static,
            targets: [
                "YandexMapsMobileFull",
                "YandexMapsMobileFullResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobileFull",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.23.0-full.framework.zip",
            checksum: "e7abe01df42b1aabdb56ae122d9fe44fe5788bacc11d5f0e12df9adf653042fe"
        ),
        .target(
            name: "YandexMapsMobileFullResources",
            path: "Resources",
            resources: [.process("Contents")],
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
