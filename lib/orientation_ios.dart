import 'dart:async';

import 'package:flutter/services.dart';

class OrientationIos {
  static const MethodChannel _channel = MethodChannel('orientation_ios');
  static const String METHOD_CHANGE_ORIENTATION = "change_orientation";
  static const String METHOD_APP_SUPPORT_ORIENTATION =
      "app_support_orientation";

  static Future changeScreenOrientation(DeviceOrientation orientation) {
    return _channel
        .invokeMethod(METHOD_CHANGE_ORIENTATION, [orientation.index]);
  }

  static Future changeDeviceSupportOrientation(
      DeviceOrientationMask orientationMask) {
    return _channel
        .invokeMethod(METHOD_APP_SUPPORT_ORIENTATION, [orientationMask.index]);
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
  Unknown,
  Portrait, // Device oriented vertically, home button on the bottom
  PortraitUpsideDown, // Device oriented vertically, home button on the top
  LandscapeLeft, // Device oriented horizontally, home button on the right
  LandscapeRight, // Device oriented horizontally, home button on the left
}
