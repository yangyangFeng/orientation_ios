import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:orientation_ios/orientation_ios.dart';

void main() {
  const MethodChannel channel = MethodChannel('orientation_ios');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await OrientationIos.platformVersion, '42');
  });
}
