import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/view/widgets/signupinfowidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Palette.googleColor),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: SignUpInfoWidget()),
            )
          ],
        ),
      ),
    );
  }
}
