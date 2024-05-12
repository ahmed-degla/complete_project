import 'package:flutter/material.dart';

import 'core/Routing/navigator_routing.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: RouteUtils.navigatorKey,
    );
  }
}
