import 'package:complete_project/core/spacing/spacing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/core/widgets/login_divider.dart';
import 'package:complete_project/core/widgets/my_text_button.dart';
import 'package:complete_project/core/widgets/my_text_form_field.dart';
import 'package:complete_project/features/login/ui/widgets/sign_up_bottom_section.dart';
import 'package:complete_project/features/sign_up/ui/widgets/media_integration_section_sign_up.dart';
import 'package:complete_project/features/sign_up/ui/widgets/sign_in_bottom_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  'Create Account',
                  style: TextStyles.font24Blue700Weight,
                ),
                verticalSpacing(20.h),
                Text(
                  'Sign up now and start exploring all that our app has to offer.'
                  ' We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GreyWeight400,
                ),
                verticalSpacing(30),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      MyTextFormField(
                          controller: emailController,
                          hintText: 'Email',
                          isObscure: false),
                      verticalSpacing(30.h),
                      MyTextFormField(
                        controller: passwordController,
                        hintText: 'Password',
                        isObscure: isObscure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          child: isObscure
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
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
                        textButton: 'Create Account',
                        textButtonStyle: TextStyles.font16Blue600Weight,
                      ),
                      verticalSpacing(30),
                      LogInDivider(),
                      verticalSpacing(30),
                      MediaIntegrationSectionSignUp(),
                      verticalSpacing(30),
                      //   ToDo   terms and conditions section
                      SignInBottomSection(),
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
