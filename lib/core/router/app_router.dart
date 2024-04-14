import 'package:flutter/material.dart';
import 'package:payment_app/core/router/app_router_paths.dart';
import 'package:payment_app/features/checkout/presentation/screens/my_cart_screen.dart';
import 'package:payment_app/features/checkout/presentation/screens/payment_details_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterPaths.home:
        return MaterialPageRoute(builder: (_) => const MyCartScreen());
      case AppRouterPaths.details:
        return MaterialPageRoute(builder: (_) => const PaymentDetailsScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
