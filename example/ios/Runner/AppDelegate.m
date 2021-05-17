#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "FlutterAppDelegate+Orientation.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  // self.orientationMask = UIDeviceOrientationLandscapeLeft;
  UIDeviceOrientation ori = [[UIDevice currentDevice] orientation];
  sleep(10);
  NSLog(@"ori=%d",ori);
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
