// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobileFull",
    defaultLocalization: "en",
    platforms: [.iOS("15.0")],
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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.39.0-full.framework.zip",
            checksum: "e08810749583537d85d79f672cb9f127bbb5574609b1e13473690666f1465f1c"
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
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
