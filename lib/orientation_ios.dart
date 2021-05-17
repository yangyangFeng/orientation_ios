import 'dart:async';

import 'package:flutter/services.dart';

class OrientationIos {
  static const MethodChannel _channel =
      MethodChannel('flutter_ios_device_rotation');
  static const String METHOD_CHANGE_ORIENTATION = "change_orientation";
  static const String METHOD_APP_SUPPORT_ORIENTATION =
      "app_support_orientation";

  static Future changeScreenOrientation(DeviceOrientation orientationMask) {
    return _channel
        .invokeMethod(METHOD_CHANGE_ORIENTATION, [orientationMask.index]);
  }

  static Future changeDeviceOrientationSupport(
      DeviceOrientationMask orientationMask) {
    return _channel
        .invokeMethod(METHOD_CHANGE_ORIENTATION, [orientationMask.index]);
  }
}

enum DeviceOrientationMask {
  Portrait,
  LandscapeLeft,
  LandscapeRight,
  PortraitUpsideDown,
  Landscape,
  All,
  AllButUpsideDown,
}

enum DeviceOrientation {
  UIDeviceOrientationUnknown,
  UIDeviceOrientationPortrait, // Device oriented vertically, home button on the bottom
  UIDeviceOrientationPortraitUpsideDown, // Device oriented vertically, home button on the top
  UIDeviceOrientationLandscapeLeft, // Device oriented horizontally, home button on the right
  UIDeviceOrientationLandscapeRight, // Device oriented horizontally, home button on the left
}
