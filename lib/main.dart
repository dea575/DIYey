import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/auth_page.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './diyeyapp/generatedloginwidget/generated/EmailForm.dart';
// import 'package:flutterapp/diyeyapp/generatedhomewidget/generated/HomePage.dart';
import 'package:flutterapp/diyeyapp/generatedandroidsmall1widget/GeneratedAndroidSmall1Widget.dart';
import 'package:flutterapp/diyeyapp/generatedtambahtutorialwidget1/GeneratedTambahtutorialWidget1.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget3/TutorialPage1.dart';
// import 'package:flutterapp/diyeyapp/generatedtutorialwidget5/GeneratedTutorialWidget5.dart';
// import 'package:flutterapp/diyeyapp/generatedtutorialwidget7/GeneratedTutorialWidget7.dart';
import 'package:flutterapp/diyeyapp/generatedhomewidget/GeneratedHomeWidget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      home: MainPage(),
      routes: {
        // '/GeneratedHomeWidget': (context) => HomePage(),
        // '/GeneratedTutorialWidget3': (context) => GeneratedTutorialWidget3(),
        // '/GeneratedTutorialWidget5': (context) => GeneratedTutorialWidget5(),
        // '/GeneratedTutorialWidget7': (context) => GeneratedTutorialWidget7(),
        // '/GeneratedTambahtutorialWidget1': (context) =>
        // GeneratedTambahtutorialWidget1(),
        // '/GeneratedAndroidSmall1Widget': (context) =>
        //     GeneratedAndroidSmall1Widget(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something Went Wrong'),
            );
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
