import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/utils/methods.dart';
import 'package:radio_nepal/view/widgets/buildtextfield.dart';

class SignUpInfoWidget extends StatefulWidget {
  const SignUpInfoWidget({Key? key}) : super(key: key);

  @override
  _SignUpInfoWidgetState createState() => _SignUpInfoWidgetState();
}

class _SignUpInfoWidgetState extends State<SignUpInfoWidget> {
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
                    "Sign Up",
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
            margin: EdgeInsets.only(bottom: 5),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                children: [
                  buildTextField(
                      "First Name", "First Name", false, true, false),
                  buildTextField("Last Name", "Last Name", false, true, false),
                  buildTextField("Email", "Email", false, true, false),
                  buildTextField("Password", "Password", true, false, false),
                  buildTextField("Confirm Password", "Confrim Password", true,
                      false, false),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: buildTextButton(context, "Sign Up", Palette.googleColor)),
        ],
      ),
    );
  }
}
