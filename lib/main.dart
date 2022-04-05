// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rps_mobile_game/screens/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.indigo[900],
        canvasColor: Color.fromARGB(255, 241, 241, 227),
      ),
      home: const GameScreen(),
    );
  }
}
