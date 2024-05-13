import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/text_styles.dart';

class LogInDivider extends StatelessWidget {
  const LogInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: ColorsManger.greyDividerColor,)),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
          child: Text('Or sign in with',style: TextStyles.font12GreyDividerWeight400,),
        ),
        Expanded(child: Divider(color: ColorsManger.greyDividerColor,)),
      ],
    );
  }
}