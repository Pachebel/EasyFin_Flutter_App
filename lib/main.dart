import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:easyfin_v2/Pages/splash_screen/splash_screen.dart';
import 'package:easyfin_v2/repositories/themes.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
    Widget splashOpa = SplashScreenView(
      pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
      navigateRoute: const SplashScreen(),
      duration: 2000,
      imageSize: 130,
      imageSrc: "assets/images/splash.jpg",
      text: "Opa, Começo!",
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkThemeData,
      theme: lightThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: splashOpa,
    );
  }
}
