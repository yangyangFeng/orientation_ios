#import "FlutterAppDelegate+Orientation.h"
#import <objc/runtime.h>

static char* const kOrientationMask;

@implementation FlutterAppDelegate (Orientation)

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
  return self.orientationMask;
}

- (void)setOrientationMask:(UIInterfaceOrientationMask)OrientationMask{
  objc_setAssociatedObject(self, kOrientationMask, @(OrientationMask), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIInterfaceOrientationMask)orientationMask{
  return[(NSNumber *)objc_getAssociatedObject(self, kOrientationMask) intValue];
}
@end
