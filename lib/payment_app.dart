import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_app/core/router/app_router.dart';
import 'package:payment_app/core/router/app_router_paths.dart';
import 'package:payment_app/generated/l10n.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          DefaultMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Payment App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: AppRouterPaths.home,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
