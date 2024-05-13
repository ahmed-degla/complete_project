import 'package:flutter/material.dart';

import '../theming/colors.dart';

class MyTextButton extends StatelessWidget {
  final String textButton;
  double? width;
  double? height;
  void Function()? onTap;
  final textButtonStyle;
  MyTextButton({super.key, required this.textButton, this.textButtonStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: ColorsManger.primaryColor),
        width: double.infinity,
        height: height ?? 50,
        child: Center(
          child: Text(
            textButton,
            style: textButtonStyle,
          ),
        ),
      ),
    );
  }
}
