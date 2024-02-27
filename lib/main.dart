import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature/modules/splash/splach_screen.dart';
import 'package:nature/services/app/app_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApplicationServices.instance.launch();
  runApp(MyApp());
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
