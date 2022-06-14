import 'package:flutterapp/diyeyapp/generatedloginwidget/generated/EmailForm.dart';
import 'package:flutterapp/diyeyapp/generatedregisterwidget1/generated/EmailFormReg.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => 
  isLogin ? Email(onClickedSignUp: toggle,) : 
            EmailForm(onClickedSignIn: toggle);
  void toggle() => setState(() => isLogin = !isLogin); 

  }
