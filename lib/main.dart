import 'package:flutter/material.dart';
import 'package:mobile_payment_app_ui/screens/home.dart';
import 'package:mobile_payment_app_ui/screens/login.dart';
import 'package:mobile_payment_app_ui/screens/notification.dart';
import 'package:mobile_payment_app_ui/screens/open_page_1.dart';
import 'package:mobile_payment_app_ui/screens/profile.dart';
import 'package:mobile_payment_app_ui/screens/recived.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OpenPage()
      );
  }
}
