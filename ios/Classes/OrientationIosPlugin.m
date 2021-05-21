#import "OrientationIosPlugin.h"

#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>
#import "FlutterAppDelegate+Orientation.h"

static NSString *const CHANNEL_NAME = @"orientation_ios";
static NSString *const METHOD_CHANGE_ORIENTATION = @"change_orientation";

@implementation OrientationIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:CHANNEL_NAME
            binaryMessenger:[registrar messenger]];
  OrientationIosPlugin* instance = [[OrientationIosPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([METHOD_CHANGE_ORIENTATION isEqualToString:call.method]) {
    NSNumber *index = [NSNumber numberWithInt: [call.arguments[0] intValue]];
    UIInterfaceOrientation iOSOrientation;
    UIInterfaceOrientationMask appSupportOrientation;
    switch ([index intValue]) {
      case 0:
      {
        appSupportOrientation = UIInterfaceOrientationMaskPortrait;
        iOSOrientation = UIInterfaceOrientationPortrait;
      }
        break;
      case 1:
      {
        appSupportOrientation = UIInterfaceOrientationMaskLandscape;
        iOSOrientation = UIInterfaceOrientationLandscapeLeft;
      }
        break;
      case 2:
      {
        appSupportOrientation = UIInterfaceOrientationMaskPortraitUpsideDown;
        iOSOrientation = UIInterfaceOrientationPortraitUpsideDown;
      }
        break;
      case 3:
      {
        appSupportOrientation = UIInterfaceOrientationMaskLandscape;
        iOSOrientation = UIInterfaceOrientationLandscapeRight;
      }
        break;
      default:
      {
        appSupportOrientation = UIInterfaceOrientationMaskAll;
        iOSOrientation = UIInterfaceOrientationUnknown;

      }
        break;
    }
    FlutterAppDelegate *delegate = (FlutterAppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.orientationMask = appSupportOrientation;
    [[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:[UIApplication sharedApplication].keyWindow];
      [[UIDevice currentDevice] setValue:@(iOSOrientation) forKey:@"orientation"];
      [UIViewController attemptRotationToDeviceOrientation];
      result(nil);
  } else {
    result(FlutterMethodNotImplemented);
  }
}


@end
