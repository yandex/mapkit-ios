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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.11.0-full.framework.zip",
            checksum: "da5099d0106ba2bbd4cc56687935e4f94cb48e84994bb4e159ba570202246071"
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