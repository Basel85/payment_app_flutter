import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case '/details':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
