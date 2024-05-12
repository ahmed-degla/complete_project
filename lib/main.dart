import 'package:complete_project/core/Routing/navigator_routing.dart';
import 'package:complete_project/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: RouteUtils.navigatorKey,
      home: HomeScreen(),
    );
  }
}
