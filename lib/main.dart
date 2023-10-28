import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _pageIndex != 1 ? AppBar() : null,
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "En cours", icon: Icon(Icons.music_note)),
            BottomNavigationBarItem(
                label: "Paramètres", icon: Icon(Icons.settings)),
          ]),
    );
  }
}
