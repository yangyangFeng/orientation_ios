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
      tag: 1.0.2
```

```
//import pulgin
import 'package:orientation_ios/orientation_ios.dart' as P;
//change orientation to Portrait
P.OrientationIos.changeScreenOrientation(P.DeviceOrientation.Portrait);
//change orientation to LandscapeLeft
P.OrientationIos.changeScreenOrientation(P.DeviceOrientation.LandscapeLeft);
```

# 1.0.2

update example code

example.gif![image](https://github.com/yangyangFeng/imageResource/blob/master/orientation_ios.gif)
