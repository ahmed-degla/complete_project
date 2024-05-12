import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/core/theming/colors.dart';
import 'package:complete_project/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        color: ColorsManger.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {
          RouteUtils.push(Routes.logIn, RouteSettings());
        },
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
