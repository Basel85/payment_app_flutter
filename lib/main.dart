import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_app/payment_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const PaymentApp());
}
