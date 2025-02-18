#import <resource_bundle_accessor.h>

@interface YandexMapsMobileSwiftResources : NSObject
@end

@implementation YandexMapsMobileSwiftResources

+ (NSBundle *)mapkitResourcesBundle
{
    return SWIFTPM_MODULE_BUNDLE;
}

@end
