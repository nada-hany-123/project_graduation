import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:gloves_app/MainScreen.dart';
import 'package:gloves_app/ProfileScreen.dart';
import 'SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    MainScreen(),
    ProfileScreen(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: screens[currentIndex], // Dynamically change body
      ),
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: const Color(0xffE7E7E7),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.person,
              backgroundColor: const Color(0xffE7E7E7),
              extras: {"label": "person"}),
          FluidNavBarIcon(
              icon: Icons.settings,
              backgroundColor: const Color(0xffE7E7E7),
              extras: {"label": "settings"}),
        ],
        onChange: (int index) {
          setState(() {
            currentIndex = index; // Update the index
          });
        },
        style: const FluidNavBarStyle(
            iconSelectedForegroundColor: Colors.black,
            iconUnselectedForegroundColor: Colors.black,
            barBackgroundColor: Color(0xffE7E7E7)),
        scaleFactor: 1.5,
        defaultIndex: currentIndex,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }
}