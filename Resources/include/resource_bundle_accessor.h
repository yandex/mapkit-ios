#import <Foundation/Foundation.h>

#if SWIFT_PACKAGE
#define SWIFTPM_MODULE_BUNDLE [NSBundle bundleForClass:[YandexMapsMobileSwiftResources class]]
#else
#define SWIFTPM_MODULE_BUNDLE [NSBundle bundleForClass:[YandexMapsMobileSwiftResources class]]
#endif