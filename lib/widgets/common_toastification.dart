import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast(BuildContext context, String message, String description,
    {ToastificationType type = ToastificationType.success,
    ToastificationStyle style = ToastificationStyle.flat,
    bool? dragToClose = true}) {
  Toastification().show(
    context: context,
    title: Text(message),
    description: Text(description),
    type: type,
    style: style,
    showProgressBar: false,
    dragToClose: dragToClose,
    alignment: Alignment.bottomCenter,
    applyBlurEffect: false,
    autoCloseDuration: const Duration(seconds: 3),
    animationDuration: const Duration(milliseconds: 300),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
  );
}
