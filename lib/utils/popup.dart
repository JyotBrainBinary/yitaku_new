import 'package:flutter/material.dart';
import 'package:get/get.dart';


void errorToast(String error, {String? title}) {
  Get.snackbar(
    title ?? "Error",
    error,
    duration: const Duration(seconds: 5),
    colorText:Colors.white,
    backgroundColor: Colors.redAccent,
  );
}

void flutterToast(String value, {String? title}) {
  Get.snackbar(
    title ?? "success",
    value,
    duration: const Duration(seconds: 5),
    colorText: Colors.white,
    backgroundColor: Colors.green,
  );
}

void commonAlert(
    {String? title,
      String? content,
      VoidCallback? onOkTap,
      VoidCallback? onCancelTap}) {
  Get.dialog(
    AlertDialog(
      title: title == null ? null : Text(title),
      content: content == null ? null : Text(content),
      actions: [
        TextButton(
          onPressed: onOkTap,
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.red),
          ),
        ),
        TextButton(
          onPressed: onCancelTap ?? Get.back,
          child: const Text("Cancel"),
        ),
      ],
    ),
  );
}
