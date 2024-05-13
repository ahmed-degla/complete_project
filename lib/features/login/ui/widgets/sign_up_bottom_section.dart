import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignUpBottomSection extends StatelessWidget {
  const SignUpBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Doesn\'t have an account? ',
          style: TextStyles.font14Black2rWeight400,
        ),
        GestureDetector(
          onTap: () {
            RouteUtils.push(SignUpScreen(), RouteSettings());
          },
          child: Text('Signup', style: TextStyles.font14primaryWeight400),
        )
      ],
    );
  }
}
