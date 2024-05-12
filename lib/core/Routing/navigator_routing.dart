import 'package:flutter/material.dart';

class RouteUtils {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext context = navigatorKey.currentState!.context;

  static Route _getRoute(Widget view) {
    return MaterialPageRoute(builder: (context) => view);
  }

  static Future<dynamic> push(Widget view) {
    return Navigator.of(context).push(_getRoute(view));
  }

  static Future<dynamic> pushReplacement(Widget view) {
    return Navigator.of(context).pushReplacement(_getRoute(view));
  }

  static void pop(Widget view) {
    return Navigator.of(context).pop();
  }

  static Future<dynamic> pushAndRemoveUntil(Widget view) {
    return Navigator.of(context)
        .pushAndRemoveUntil(_getRoute(view), (route) => false);
  }
}
