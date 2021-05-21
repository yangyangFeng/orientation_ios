import 'dart:async';

import 'package:flutter/services.dart';

class OrientationIos {
  static const MethodChannel _channel = MethodChannel('orientation_ios');
  static const String METHOD_CHANGE_ORIENTATION = "change_orientation";

  static changeScreenOrientation(DeviceOrientation orientation) {
    SystemChrome.setPreferredOrientations([orientation]);
    if (Platform.isIOS) {
      return _channel
          .invokeMethod(METHOD_CHANGE_ORIENTATION, [(orientation.index)]);
    }
  }
}
