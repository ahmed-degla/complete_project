import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/core/spacing/spacing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/core/widgets/my_text_button.dart';
import 'package:complete_project/core/widgets/my_text_form_field.dart';
import 'package:complete_project/features/forget_password/ui/forget_password_screen.dart';
import 'package:complete_project/features/login/ui/widgets/sign_up_bottom_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/login_divider.dart';
import 'widgets/media_integration_section_login.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                  'Welcome Back',
                  style: TextStyles.font24Blue700Weight,
                ),
                verticalSpacing(20.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve '
                  'been up to since you last logged in.',
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
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: GestureDetector(
                          onTap: () {
                            RouteUtils.push(ForgetPassword(), RouteSettings());
                          },
                          child: Text(
                            'Forget Password',
                            style: TextStyles.font16Blue2Weight400,
                          ),
                        ),
                      ),
                      verticalSpacing(30.h),
                      MyTextButton(
                        textButton: 'LogIn',
                        textButtonStyle: TextStyles.font16Blue600Weight,
                      ),
                      verticalSpacing(30),
                      LogInDivider(),
                      verticalSpacing(30),
                      MediaIntegrationSectionLogIn(),
                      verticalSpacing(30),
                      //   ToDo   terms and conditions section
                      SignUpBottomSection(),
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
