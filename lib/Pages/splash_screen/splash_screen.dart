import 'dart:async';
import 'package:easyfin_v2/Pages/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        PageTransition(
          type: PageTransitionType.fade, duration: const Duration(milliseconds: 500),
          child: const LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Isso é ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1),
            ),
          ),SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          GradientText(
            'Aplicativos!',
            style: Theme.of(context).textTheme.headline1,
            colors: [
              HexColor("#05c46b"),
              HexColor("#3bd464"),
              HexColor("#05c46b")
            ],
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
          const Center(),
        ],
      ),
    );
  }
}
