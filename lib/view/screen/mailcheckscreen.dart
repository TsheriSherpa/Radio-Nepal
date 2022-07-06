import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';
import 'package:radio_nepal/view/widgets/checkmailinfowidget.dart';

class MailCheckScreen extends StatelessWidget {
  const MailCheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Palette.googleColor),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: MailCheckInfoWidget()),
            )
          ],
        ),
      ),
    );
  }
}
