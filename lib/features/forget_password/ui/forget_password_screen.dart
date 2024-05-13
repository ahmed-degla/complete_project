import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/core/spacing/spacing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/core/widgets/my_text_button.dart';
import 'package:complete_project/core/widgets/my_text_form_field.dart';
import 'package:complete_project/features/forget_password/ui/forget_password_fill_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Create Account',
                style: TextStyles.font24Blue700Weight,
              ),
              verticalSpacing(20.h),
              Text(
                'At our app, we take the security of your information seriously.',
                style: TextStyles.font14GreyWeight400,
              ),
              verticalSpacing(30),
              Expanded(
                child: Column(
                  children: [
                    MyTextFormField(
                      controller: phoneController,
                      hintText: 'Phone',
                      isObscure: false,
                    ),
                    Spacer(),
                    MyTextButton(
                      onTap: () {
                        RouteUtils.push(
                            ForgetPasswordFillData(), RouteSettings());
                      },
                      textButton: 'Reset Password',
                      textButtonStyle: TextStyles.font16Blue600Weight,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
