import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:complete_project/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';

class SignInBottomSection extends StatelessWidget {
  const SignInBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyles.font14Black2rWeight400,
        ),
        GestureDetector(
            onTap: () {
              RouteUtils.push(LogInScreen(), RouteSettings());
            },
            child: Text('LogIn', style: TextStyles.font14primaryWeight400))
      ],
    );
  }
}
