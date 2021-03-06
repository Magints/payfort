#import "PayfortPlugin.h"

#if __has_include(<payfort_plugin/payfort_plugin-Swift.h>)
#import <payfort_plugin/payfort_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "payfort_plugin-Swift.h"
#endif

@implementation PayfortPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPayfortPlugin registerWithRegistrar:registrar];
}
@end
