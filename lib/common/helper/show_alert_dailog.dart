import 'package:flutter/material.dart';

showAlertDailog({
  required BuildContext context,
  required String message,
  String? btntext,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return const AlertDialog();
    }
  );
}
