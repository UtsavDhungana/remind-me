import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

void show(BuildContext context) {
  showDialog<dynamic>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Image.asset("assets/gif/loader.gif"),
        ),
      );
    },
  );
}

void dismiss(BuildContext context) {
  context.router.pop(true);
}

Widget progressDialog() {
  return Dialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    child: Image.asset("assets/gif/loader.gif"),
  );
}
