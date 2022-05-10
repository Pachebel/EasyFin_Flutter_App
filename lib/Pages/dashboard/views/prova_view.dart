import 'package:flutter/material.dart';

class ProvaView extends StatefulWidget {
  const ProvaView({Key? key}) : super(key: key);

  @override
  State<ProvaView> createState() => _ProvaViewState();
}

class _ProvaViewState extends State<ProvaView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("opa isso é prova view"),
      ),
    );
  }
}
