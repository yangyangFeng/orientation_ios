import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:orientation_ios/orientation_ios.dart';

//export 'package:orientation_ios/orientation_ios.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var  aa = DeviceOrientation;
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
    DeviceOrientation aa = DeviceOrientation.portraitUp;
    print('${aa.index}');
    if (Platform.isIOS) {
    }
    return SafeArea(child: Center(
      child: ListView(children: [
        GestureDetector(onTap: (){
          OrientationIos.changeScreenOrientation(DeviceOrientation.portraitUp);
          print("change to Portrait");
        },child: Container(height: 44,child: Text('Portrait'),),),
        GestureDetector(onTap: (){
          OrientationIos.changeScreenOrientation(DeviceOrientation.portraitDown);
          print("change to PortraitUpsideDown");
        },child: Container(color: Colors.lightBlueAccent,height: 44,child: Text('PortraitUpsideDown'),),),
        GestureDetector(onTap: (){
          OrientationIos.changeScreenOrientation(DeviceOrientation.landscapeLeft);
          print("change to LandscapeLeft");
        },child: Container(height: 44,child: Text('LandscapeLeft'),),),
        GestureDetector(onTap: (){
          OrientationIos.changeScreenOrientation(DeviceOrientation.landscapeRight);
          print("change to LandscapeRight");
        },child: Container(color: Colors.lightBlueAccent,height: 44,child: Text('LandscapeRight'),),),
      ],),
    ));
  }
}
