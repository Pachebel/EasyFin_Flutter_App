import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easyfin_v2/Pages/splash_screen/splash_screen.dart';
import 'package:easyfin_v2/repositories/themes.dart';
import 'package:flutter/material.dart';
void main() async {
  runApp(
    EasyDynamicThemeWidget(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkThemeData,
      theme: lightThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: const SplashScreen(),
    );
  }
}