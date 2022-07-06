import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utilities {
  static Future<bool> isInternetWorking() async {
    bool condition1 = false;
    bool condition2 = false;

    try {
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        condition1 = true;
      }
    } on SocketException catch (_) {
      condition1 = false;
      // showInToast(MessagePrompts.NO_INTERNET);
    }

    //----------------------------------------------------------------------//

    try {
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.mobile) {
        condition2 = true;
      } else if (connectivityResult == ConnectivityResult.wifi) {
        condition2 = true;
      } else
        condition2 = false;
    } on SocketException {
      //showInToast(MessagePrompts.NO_INTERNET);
      condition2 = false;
    }

    return condition1 & condition2;
  }

  static void showInToast(String message,
      {ToastType? toastType, int toastPos = 2}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: " " + message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: toastPos == 2
          ? ToastGravity.BOTTOM
          : toastPos == 1
              ? ToastGravity.CENTER
              : ToastGravity.TOP,
      textColor: Colors.white,
      fontSize: 14,
      backgroundColor: toastType == null
          ? Colors.black
          : toastType == ToastType.ERROR
              ? Colors.red
              : toastType == ToastType.INFO
                  ? Colors.blue
                  : Colors.green,
    );
  }
}

Map<String, String> get headers => {
      "guest-secret-key": "secretGuest123456789",
    };

enum ToastType { INFO, ERROR, SUCCESS }
