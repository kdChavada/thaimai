import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

Future<void> showMessage(String message, {int duration = 3}) async {
  if (Get.context != null) {
    Get.showSnackbar(GetSnackBar(
      message: message.isEmpty ? "Error" : message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(12),
      duration: Duration(seconds: duration),
      borderRadius: 16,
      backgroundColor: Colors.black87,
    ));
  }
}
