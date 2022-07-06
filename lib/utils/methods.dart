import 'package:flutter/material.dart';

SizedBox buildTextButton(
    BuildContext context, String title, Color backgroundColor,
    {Function()? action}) {
  return SizedBox(
      width: 200,
      child: TextButton(
          onPressed: action,
          style: TextButton.styleFrom(
              side: BorderSide(width: 1, color: Colors.grey),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              primary: Colors.white,
              backgroundColor: backgroundColor),
          child: Text(
            title,
          )));
}

Column buildIconWithTextButton(
    BuildContext context, IconData icon, String title) {
  return Column(children: [
    IconButton(
      onPressed: () {},
      iconSize: 50.0,
      icon: Icon(icon),
    ),
    Text(title, style: TextStyle(color: Colors.black))
  ]);
}
