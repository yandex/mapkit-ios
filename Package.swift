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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.36.0-full.framework.zip",
            checksum: "a138aeb3a85a16ac57d5998155ce94dcbb39025eb2e2ced3c9368fa3a11b31d1"
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
