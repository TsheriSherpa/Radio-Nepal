import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/utils/methods.dart';
import 'package:radio_nepal/view/screen/mailcheckscreen.dart';

import 'buildtextfield.dart';

class ForgetPasswordInfoWidget extends StatefulWidget {
  const ForgetPasswordInfoWidget({Key? key}) : super(key: key);

  @override
  _ForgetPasswordInfoWidgetState createState() =>
      _ForgetPasswordInfoWidgetState();
}

class _ForgetPasswordInfoWidgetState extends State<ForgetPasswordInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                    "Forgot Password",
                    style: TextStyle(
                      color: Palette.googleColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Text(
                  "Please enter your email to recieve a verification code")),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                children: [
                  buildTextField("Email", "Email", false, true, false),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: buildTextButton(
                context,
                "Submit",
                Palette.googleColor,
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MailCheckScreen()));
                },
              )),
        ],
      ),
    );
  }
}
