import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/utils/methods.dart';
import 'package:radio_nepal/view/screen/loginscreen.dart';
import 'package:radio_nepal/view/widgets/buildtextfield.dart';

class ResetPasswordInfoWidget extends StatefulWidget {
  const ResetPasswordInfoWidget({Key? key}) : super(key: key);

  @override
  _ResetPasswordInfoWidgetState createState() =>
      _ResetPasswordInfoWidgetState();
}

class _ResetPasswordInfoWidgetState extends State<ResetPasswordInfoWidget> {
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
                    "Reset Password",
                    style: TextStyle(
                      color: Palette.googleColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(child: Text("Please check your email for code")),
          Center(child: Text("Enter your code below to reset password")),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                children: [
                  buildTextField("Email", "Email", false, true, false),
                  buildTextField("Code", "Code", true, false, false),
                  buildTextField("Password", "Password", true, false, false),
                  buildTextField("Confirm Password", "Confrim Password", true,
                      false, false),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: buildTextButton(
                context,
                "Reset Password",
                Palette.googleColor,
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              )),
        ],
      ),
    );
  }
}
