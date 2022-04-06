// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_mobile_game/screens/game_screen.dart';
import 'models/model_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MySender(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.cyan[700],
          accentColor: Colors.cyan[300],
          // canvasColor: Color.fromARGB(255, 241, 241, 227),
          canvasColor: Color.fromARGB(255, 8, 5, 33),
        ),
        home: const GameScreen(),
      ),
    );
  }
}
