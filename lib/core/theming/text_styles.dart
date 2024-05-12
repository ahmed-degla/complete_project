import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static  TextStyle font24Black700Weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static  TextStyle font32Bluebold = TextStyle(
    color: ColorsManger.primaryColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle font13GreyRegular= TextStyle(
    color: ColorsManger.grayColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
  );  static  TextStyle font16WhiteSemiBold= TextStyle(
    color: ColorsManger.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
}
