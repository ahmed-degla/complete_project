import 'package:complete_project/core/spacing/spacing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/core/widgets/my_text_button.dart';
import 'package:complete_project/core/widgets/my_text_form_field.dart';
import 'package:complete_project/features/forget_password/ui/widgets/profile_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordFillData extends StatefulWidget {
  const ForgetPasswordFillData({super.key});

  @override
  State<ForgetPasswordFillData> createState() => _ForgetPasswordFillDataState();
}

class _ForgetPasswordFillDataState extends State<ForgetPasswordFillData> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  GlobalKey formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Fill Your Profile',
                  style: TextStyles.font24Blue700Weight,
                ),
                verticalSpacing(20.h),
                Text(
                  'Please take a few minutes to fill out your profile with as much detail as possible.',
                  style: TextStyles.font14GreyWeight400,
                ),
                verticalSpacing(30),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      ProfileSection(),
                      verticalSpacing(30.h),
                      MyTextFormField(
                          controller: emailController,
                          hintText: 'Full Name',
                          isObscure: false),
                      verticalSpacing(30.h),
                      MyTextFormField(
                        controller: passwordController,
                        hintText: 'Email',
                        isObscure: false,
                      ),
                      verticalSpacing(30.h),
                      MyTextFormField(
                        controller: phoneController,
                        hintText: 'Birthday',
                        isObscure: false,
                        keyBoardType: TextInputType.phone,
                      ),
                      verticalSpacing(30.h),
                      MyTextFormField(
                        controller: phoneController,
                        hintText: 'Phone',
                        isObscure: false,
                        keyBoardType: TextInputType.phone,
                      ),
                      verticalSpacing(30.h),
                      MyTextButton(
                        onTap: () {},
                        textButton: 'Submit',
                        textButtonStyle: TextStyles.font16Blue600Weight,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
