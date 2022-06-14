import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../auth_page.dart';
// import 'LoginButton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Email extends StatefulWidget {
  final VoidCallback onClickedSignUp;
  const Email({Key? key, required this.onClickedSignUp}) : super(key: key);
  @override
  State<Email> createState() => _EmailPageState();
}

class _EmailPageState extends State<Email> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool passwordVisible = false;
  String errorMessage = '';
  bool isLoading = false;
  get heading2 => null;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
    void dispose() {
      emailController.dispose();
      passwordController.dispose();

      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    // User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20),
        width: 360.0,
        height: 640.0,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 240.0,
              height: 227.0,
              child: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset(
                  "assets/images/e8a2f2c65f62ce6e8fe19f550a8d96ecb63ef8e2.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 240.0,
                  height: 227.0,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
            ),
            Text(
              '''Login''',
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
              style: TextStyle(
                height: 1.171875,
                fontSize: 20.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),

                /* letterSpacing: 0.0, */
              ),
            ),
            Form(
              // key: _key,
              child: Center(
                child: Column(
                  children: [
                    Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 245, 255),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.black)),
                        child: TextFormField(
                          controller: emailController,
                          validator: validateEmail,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Form(
                // key: _key,
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 191, 245),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black)),
                  child: TextFormField(
                    controller: passwordController,
                    validator: validatePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                      suffixIcon: IconButton(
                        color: Color.fromARGB(255, 0, 0, 0),
                        splashRadius: 1,
                        icon: Icon(passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        onPressed: togglePassword,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text(
                        '''Login''',
                      ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 167, 146, 250),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(100, 36)),
                onPressed: Login,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignUp,
                            text: 'Register',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ))
                      ]),
                )),
          ],
        ),
      ),
    );
  }

  Future Login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return 'E-mail address is required.';
  }

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return 'Password is required.';
  }

  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword)) {
    return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';
  }

  return null;
}
