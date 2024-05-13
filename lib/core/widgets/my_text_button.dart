import 'package:flutter/material.dart';

import '../theming/colors.dart';

class MyTextButton extends StatelessWidget {
  final String textButton;
  double? width;
  double? height;
  void Function()? onTap;
  final textButtonStyle;
  MyTextButton({super.key, required this.textButton, this.textButtonStyle,this.onTap,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: ColorsManger.primaryColor,borderRadius: BorderRadius.circular(16)),
        width: double.infinity,
        height: height ?? 55,
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
