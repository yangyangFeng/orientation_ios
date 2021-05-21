# orientation_ios

Plug in supporting modifying IOS device orientation

## example
```
dependencies:
  flutter:
    sdk: flutter

  orientation_ios:
    git:
      url: https://github.com/yangyangFeng/orientation_ios.git
      tag: 1.1.0
```

```
//import pulgin
import 'package:orientation_ios/orientation_ios.dart';
//change orientation to portraitUp
OrientationIos.changeScreenOrientation(DeviceOrientation.portraitUp);
//change orientation to landscapeRight
OrientationIos.changeScreenOrientation(DeviceOrientation.landscapeRight);
```

# 1.0.2

update example code

example.gif![image](https://github.com/yangyangFeng/imageResource/blob/master/orientation_ios.gif)
