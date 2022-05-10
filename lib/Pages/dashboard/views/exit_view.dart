import 'package:flutter/material.dart';

class ExitView extends StatefulWidget {
  const ExitView({Key? key}) : super(key: key);

  @override
  State<ExitView> createState() => _ExitViewState();
}

class _ExitViewState extends State<ExitView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text("opa vai tarde!"),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
