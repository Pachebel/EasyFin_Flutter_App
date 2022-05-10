import 'package:easyfin_v2/Pages/dashboard/views/dashboard_view.dart';
import 'package:easyfin_v2/Pages/dashboard/views/perfil_view.dart';
import 'package:easyfin_v2/Pages/dashboard/views/prova_view.dart';
import 'package:easyfin_v2/Pages/dashboard/views/turma_vew.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int _currentIndex = 0;

  List<Widget> tabs = [
    const DashboardView(),
    const TurmaView(),
    const ProvaView(),
    const PerfilView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: tabs[_currentIndex]),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            selectedColor: Theme.of(context)
                .inputDecorationTheme
                .focusedBorder
                ?.borderSide
                .color,
            title: const Text("Home"),
            icon: const Icon(Icons.home_rounded),
          ),
          SalomonBottomBarItem(
            selectedColor: Theme.of(context)
                .inputDecorationTheme
                .focusedBorder
                ?.borderSide
                .color,
            title: const Text("Turmas"),
            icon: const Icon(Icons.people_rounded),
          ),
          SalomonBottomBarItem(
            selectedColor: Theme.of(context)
                .inputDecorationTheme
                .focusedBorder
                ?.borderSide
                .color,
            title: const Text("Provas"),
            icon: const Icon(Icons.text_snippet),
          ),
          SalomonBottomBarItem(
            selectedColor: Theme.of(context)
                .inputDecorationTheme
                .focusedBorder
                ?.borderSide
                .color,
            title: const Text("Perfil"),
            icon: const Icon(Icons.perm_identity_rounded),
          ),
        ],
      ),
    );
  }
}
