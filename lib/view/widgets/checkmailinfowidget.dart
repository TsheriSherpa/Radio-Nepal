import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/utils/methods.dart';
import 'package:radio_nepal/view/screen/resetpasswordscreen.dart';
import 'package:radio_nepal/view/screen/signupscreen.dart';

class MailCheckInfoWidget extends StatefulWidget {
  const MailCheckInfoWidget({Key? key}) : super(key: key);

  @override
  _MailCheckInfoWidgetState createState() => _MailCheckInfoWidgetState();
}

class _MailCheckInfoWidgetState extends State<MailCheckInfoWidget> {
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
                    "Check your mail",
                    style: TextStyle(
                      color: Palette.googleColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(child: Text("We have send a code by email to")),
          Center(child: Text("email")),
          Container(
            margin: EdgeInsets.fromLTRB(0, 60, 0, 40),
            child: Center(
                child: Text(
                    "Please enter 6 digit code you have received in your email")),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: PinCodeTextField(
                textStyle: TextStyle(color: Colors.white),
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                length: 6,
                obscureText: false,
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  inactiveFillColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedFillColor: Colors.grey,
                  selectedColor: Colors.red,
                  activeColor: Colors.red,
                  activeFillColor: Colors.red,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                cursorColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                boxShadows: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: buildTextButton(
                context,
                "Continue",
                Palette.googleColor,
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResetPasswordScreen()),
                  );
                },
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
            alignment: Alignment.center,
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Haven't received your activation code yet? ",
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
                          text: "Resent It",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              decoration: TextDecoration.underline))
                    ])),
          )
        ],
      ),
    );
  }
}
