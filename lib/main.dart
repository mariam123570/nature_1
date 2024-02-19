import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app_123/modules/splash/splach_screen.dart';
import 'package:nature_app_123/services/app/app_services.dart';

void main() async {
  await ApplicationServices.instance.launch();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
