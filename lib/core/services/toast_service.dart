import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/app_text_style.dart';

void showToast(
    BuildContext context, {
      required String text,
      bool isShowIcon = true,
      IconData iconData = Icons.info_outline,
      double iconSize = 20.0,
    }) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    elevation: 5,
    duration: const Duration(seconds: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.fromLTRB(25, 30, 25, 36),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isShowIcon)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              iconData,
              size: iconSize,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        Expanded(
          child:Text(text,style: AppTextStyle.bodyText14.copyWith(
            color: Colors.white,
          ),),
        ),
      ],
    ),
  ));
}

void showErrorToast(
    BuildContext context, {
      required String text,
      bool isShowIcon = true,
      IconData iconData = Icons.error_outline,
      double iconSize = 20.0,
      int seconds = 3,
    }) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    elevation: 5,
    backgroundColor: Colors.red,
    duration: Duration(seconds: seconds),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.fromLTRB(25, 30, 25, 36),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isShowIcon)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              iconData,
              size: iconSize,
              color: Colors.white,
            ),
          ),
        Expanded(
          child: Text(text,style: AppTextStyle.bodyText14.copyWith(
            color: Colors.white,
          ),),
        ),
      ],
    ),
  ));
}