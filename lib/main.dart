import 'package:flutter/material.dart';
import 'package:flutterapp/diyeyapp/generatedloginwidget/GeneratedLoginWidget.dart';
import 'package:flutterapp/diyeyapp/generatedregisterwidget1/GeneratedRegisterWidget1.dart';
import 'package:flutterapp/diyeyapp/generatedhomewidget/GeneratedHomeWidget.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget3/GeneratedTutorialWidget3.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget5/GeneratedTutorialWidget5.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget7/GeneratedTutorialWidget7.dart';
import 'package:flutterapp/diyeyapp/generatedtambahtutorialwidget1/GeneratedTambahtutorialWidget1.dart';
import 'package:flutterapp/diyeyapp/generatedandroidsmall1widget/GeneratedAndroidSmall1Widget.dart';

void main() {
  runApp(DIYeyApp());
}

class DIYeyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLoginWidget',
      routes: {
        '/GeneratedLoginWidget': (context) => GeneratedLoginWidget(),
        '/GeneratedRegisterWidget1': (context) => GeneratedRegisterWidget1(),
        '/GeneratedHomeWidget': (context) => GeneratedHomeWidget(),
        '/GeneratedTutorialWidget3': (context) => GeneratedTutorialWidget3(),
        '/GeneratedTutorialWidget5': (context) => GeneratedTutorialWidget5(),
        '/GeneratedTutorialWidget7': (context) => GeneratedTutorialWidget7(),
        '/GeneratedTambahtutorialWidget1': (context) =>
            GeneratedTambahtutorialWidget1(),
        '/GeneratedAndroidSmall1Widget': (context) =>
            GeneratedAndroidSmall1Widget(),
      },
    );
  }
}
