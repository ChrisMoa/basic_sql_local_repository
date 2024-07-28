import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class SuccessSnackBar extends SnackBar {
  final String title;
  final String message;

  SuccessSnackBar({super.key, required this.title, required this.message})
      : super(
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.success,
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: double.infinity,
        );
}

class ErrorSnackBar extends SnackBar {
  final String title;
  final String message;

  ErrorSnackBar({super.key, required this.title, required this.message})
      : super(
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.failure,
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: double.infinity,
        );
}

class WarningSnackBar extends SnackBar {
  final String title;
  final String message;

  WarningSnackBar({super.key, required this.title, required this.message})
      : super(
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.warning,
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: double.infinity,
        );
}
