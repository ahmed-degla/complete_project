import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import 'core/Routing/navigator_routing.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: RouteUtils.navigatorKey,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManger.primaryColor,
          scaffoldBackgroundColor: ColorsManger.WhiteColor,
        ),

        home: OnBoardingScreen(),
      ),
    );
  }
}
