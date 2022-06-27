import 'package:flutter/material.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedLine3Widget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedUsernameWidget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedImage1Widget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedLoginWidget1.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedLoginWidget2.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedRectangle2Widget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedRectangle30Widget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedPasswordWidget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedRectangle1Widget.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/GeneratedRegisterWidget.dart';

/* Frame login
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 360.0,
        height: 640.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 71.0,
                top: 347.0,
                right: null,
                bottom: null,
                width: 218.0,
                height: 46.0,
                child: GeneratedRectangle1Widget(),
              ),
              Positioned(
                left: 71.0,
                top: 406.0,
                right: null,
                bottom: null,
                width: 218.0,
                height: 46.0,
                child: GeneratedRectangle2Widget(),
              ),
              Positioned(
                left: 79.0,
                top: 355.0,
                right: null,
                bottom: null,
                width: 106.0,
                height: 34.0,
                child: GeneratedUsernameWidget(),
              ),
              Positioned(
                left: 79.0,
                top: 414.0,
                right: null,
                bottom: null,
                width: 148.0,
                height: 34.0,
                child: GeneratedPasswordWidget(),
              ),
              Positioned(
                left: 60.0,
                top: 89.0,
                right: null,
                bottom: null,
                width: 240.0,
                height: 227.0,
                child: GeneratedImage1Widget(),
              ),
              Positioned(
                left: 152.0,
                top: 315.0,
                right: null,
                bottom: null,
                width: 61.0,
                height: 32.0,
                child: GeneratedLoginWidget1(),
              ),
              Positioned(
                left: 144.0,
                top: 470.0,
                right: null,
                bottom: null,
                width: 78.0,
                height: 26.0,
                child: GeneratedRectangle30Widget(),
              ),
              Positioned(
                left: 162.0,
                top: 474.0,
                right: null,
                bottom: null,
                width: 46.0,
                height: 24.0,
                child: GeneratedLoginWidget2(),
              ),
              Positioned(
                left: 159.0,
                top: 560.0,
                right: null,
                bottom: null,
                width: 68.0,
                height: 24.0,
                child: GeneratedRegisterWidget(),
              ),
              Positioned(
                left: 152.0,
                top: 579.0,
                right: null,
                bottom: null,
                width: 70.0,
                height: 1.0,
                child: GeneratedLine3Widget(),
              )
            ]),
      ),
    ));
  }
}