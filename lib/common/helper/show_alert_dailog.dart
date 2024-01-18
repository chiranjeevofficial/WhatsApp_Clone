import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/extension/custom_theme_extension.dart';

showAlertDailog({
  required BuildContext context,
  required String message,
  String? btntext,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          message,
          style: TextStyle(
            color: context.theme.greyColor,
            fontSize: 15,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              btntext ?? 'OK',
              style: TextStyle(
                color: context.theme.circleImageColor,
              ),
            ),
          )
        ],
      );
    }
  );
}
