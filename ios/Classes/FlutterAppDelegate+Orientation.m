#import "FlutterAppDelegate+Orientation.h"
#import <objc/runtime.h>

static char* const kOrientationMask;

@implementation FlutterAppDelegate (Orientation)

UIInterfaceOrientationMask deviceOrientationConvert(UIInterfaceOrientation deviceOrientation){
  switch (deviceOrientation) {
    case UIInterfaceOrientationUnknown:
      return UIInterfaceOrientationMaskAll;
    case UIInterfaceOrientationPortrait:
      return UIInterfaceOrientationMaskPortrait;
    case UIInterfaceOrientationPortraitUpsideDown:
      return UIInterfaceOrientationMaskPortraitUpsideDown;
    case UIInterfaceOrientationLandscapeLeft:
      return UIInterfaceOrientationMaskLandscapeLeft;
    case UIInterfaceOrientationLandscapeRight:
      return UIInterfaceOrientationMaskLandscapeRight;
    default:
      return UIInterfaceOrientationMaskAll;
  }
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
  return self.orientationMask;
}

- (void)setOrientationMask:(UIInterfaceOrientationMask)OrientationMask{
  objc_setAssociatedObject(self, kOrientationMask, @(OrientationMask), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIInterfaceOrientationMask)orientationMask{
  NSInteger orientation = [(NSNumber *)objc_getAssociatedObject(self, kOrientationMask) intValue];
  return orientation == 0 ? deviceOrientationConvert([[UIApplication sharedApplication] statusBarOrientation]) : orientation;
}
@end
