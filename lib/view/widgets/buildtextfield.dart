import 'package:flutter/material.dart';
import 'package:radio_nepal/config/palette.dart';

Widget buildTextField(String headerTitle, String hintText, bool isNumber,
    bool isText, bool isPhoneNumber) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerTitle),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: isNumber,
            keyboardType: isText
                ? TextInputType.emailAddress
                : isNumber
                    ? TextInputType.text
                    : TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.textColor1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.textColor1),
              ),
              contentPadding: EdgeInsets.all(10),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 12, color: Palette.textColor1),
            ),
          ),
        ),
      ],
    ),
  );
}

final baseTextStyle = const TextStyle();
final subHeaderTextStyle = baseTextStyle.copyWith(
    color: const Color(0xffb6b2df),
    fontSize: 12.0,
    fontWeight: FontWeight.w400);
final headerTextStyle = baseTextStyle.copyWith(
    color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
