import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntegrationMediaContainer extends StatelessWidget {
  final String imagePath;
  IntegrationMediaContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: ColorsManger.greyLogoBackGround),
      child: Image.asset(
        imagePath,
        width: 70,
        height: 70,
      ),
    );
  }
}
