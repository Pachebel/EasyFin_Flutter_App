import 'package:flutter/material.dart';

class TurmaView extends StatefulWidget {
  const TurmaView({Key? key}) : super(key: key);

  @override
  State<TurmaView> createState() => _TurmaViewState();
}

class _TurmaViewState extends State<TurmaView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("opa turma view"),
      ),
    );
  }
}
