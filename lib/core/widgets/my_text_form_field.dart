import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../theming/text_styles.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextStyle? style;
  final TextInputType? keyBoardType;
  final String hintText;
  final Widget? suffixIcon;
  final TextStyle? hintTextStyle;
  final double? radius;
  final bool isObscure;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  void Function()? onTap;

  MyTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.style,
    this.keyBoardType,
    this.suffixIcon,
    this.hintTextStyle,
    this.radius,
    this.onTap,
    required this.isObscure,
    this.enabledBorderColor,
    this.focusedBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: isObscure,
      controller: controller,
      style: style ?? TextStyles.font16Blue2Weight400,
      keyboardType: keyBoardType ?? TextInputType.text,
      decoration: InputDecoration(
        fillColor: ColorsManger.lightestGrey,
        filled: true,
        hintText: hintText,

        suffixIcon:suffixIcon,



        hintStyle: hintTextStyle ?? TextStyles.font14LighterGreyWeight500,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 16),
          borderSide: BorderSide(
            width: 1,
            color: enabledBorderColor ?? ColorsManger.lighterGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 16),
          borderSide: BorderSide(
            width: 1,
            color: focusedBorderColor ?? ColorsManger.primaryColor,
          ),
        ),
      ),
    );
  }
}
