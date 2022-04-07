// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:rps_mobile_game/screens/game_screen.dart';
import 'package:rps_mobile_game/helpers/custom_route.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Colors.cyanAccent,
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          child: const Center(
            child: Text('Start Game'),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(
                Theme.of(context).canvasColor.withOpacity(0.9)),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  shadows: [
                    Shadow(
                      offset: Offset(4.0, 7.0),
                      blurRadius: 9.0,
                      color: Theme.of(context).canvasColor,
                    ),
                  ]),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(GameScreen.routeName);
            // Navigator.of(context).push(
            //   CustomRoute(
            //     builder: (ctx) => GameScreen(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
