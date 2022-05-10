import 'package:easyfin_v2/Pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Slide> slides = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    slides.add(
      Slide(
        title: "No seu tempo",
        description: "Estude como, quando e onde você quiser.",
        pathImage: "assets/images/study.png",
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
    slides.add(
      Slide(
        title: "Na sua turma",
        description:
            "Tire suas dúvidas de maneira fácil e rápida na sua sala de aula.",
        pathImage: "assets/images/chat.png",
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
    slides.add(
      Slide(
        title: "Olá",
        description:
            "Seja muito bem-vindo à EasyFin, o seu aplicativo de educação financeira.",
        pathImage: "assets/images/profs.png",
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: const Duration(milliseconds: 500),
            child: const MyDashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: onDonePress,
    );
  }
}
