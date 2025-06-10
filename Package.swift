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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.17.0-full.framework.zip",
            checksum: "4c1401c7acf0cc00edd97b27210ecfd5960b838e481aa888480734903f30f11c"
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
