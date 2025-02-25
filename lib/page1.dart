import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Myapp> {
  int currentIndex = 1;
  final List<Widget> pages = [
    Text("Home"),
    Text("Profile"),
  ];
  void onClickMenu(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickMenu,
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}
