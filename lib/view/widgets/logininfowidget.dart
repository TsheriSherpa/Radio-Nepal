import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/utils/methods.dart';
import 'package:radio_nepal/view/screen/forgetpasswordscreen.dart';
import 'package:radio_nepal/view/screen/mainscreen.dart';
import 'package:radio_nepal/view/screen/signupscreen.dart';

import 'buildtextfield.dart';

class LoginInfoWidget extends StatefulWidget {
  const LoginInfoWidget({Key? key}) : super(key: key);

  @override
  _LoginInfoWidgetState createState() => _LoginInfoWidgetState();
}

class _LoginInfoWidgetState extends State<LoginInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  print('Pressed');
                },
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Palette.googleColor,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 2),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildIconWithTextButton(context, Icons.facebook, "FaceBook"),
                buildIconWithTextButton(context, Icons.facebook, "Goggle"),
                buildIconWithTextButton(context, Icons.facebook, "Apple"),
              ]),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(children: [
            Row(children: [
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("or login with"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              children: [
                buildTextField("Email", "Email/Username", false, true, false),
                buildTextField("Password", "Password", true, false, false),
              ],
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            child: buildTextButton(
              context,
              "Sign In",
              Palette.googleColor,
              action: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
            )),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgetPasswordScreen()));
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 10),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                        text: "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.underline))
                  ])),
        )
      ],
    );
  }
}
