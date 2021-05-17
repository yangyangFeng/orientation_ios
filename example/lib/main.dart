import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:orientation_ios/orientation_ios.dart' as OrientationIOS;

//export 'package:orientation_ios/orientation_ios.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: buildCenter(),
      ),
    );
  }

  Widget buildCenter() {
    return SafeArea(child: Center(
      child: ListView(children: [
        GestureDetector(onTap: (){
          OrientationIOS.OrientationIos.changeScreenOrientation(OrientationIOS.DeviceOrientation.Portrait);
          print("change to Portrait");
        },child: Container(height: 44,child: Text('Portrait'),),),
        GestureDetector(onTap: (){
          OrientationIOS.OrientationIos.changeScreenOrientation(OrientationIOS.DeviceOrientation.PortraitUpsideDown);
          print("change to PortraitUpsideDown");
        },child: Container(color: Colors.lightBlueAccent,height: 44,child: Text('PortraitUpsideDown'),),),
        GestureDetector(onTap: (){
          OrientationIOS.OrientationIos.changeScreenOrientation(OrientationIOS.DeviceOrientation.LandscapeLeft);
          print("change to LandscapeLeft");
        },child: Container(height: 44,child: Text('LandscapeLeft'),),),
        GestureDetector(onTap: (){
          OrientationIOS.OrientationIos.changeScreenOrientation(OrientationIOS.DeviceOrientation.LandscapeRight);
          print("change to LandscapeRight");
        },child: Container(color: Colors.lightBlueAccent,height: 44,child: Text('LandscapeRight'),),),
      ],),
    ));
  }
}
