// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:rps_mobile_game/widgets/match_count.dart';
import 'package:rps_mobile_game/widgets/result_message.dart';
import 'package:rps_mobile_game/widgets/score_card.dart';
import 'package:rps_mobile_game/widgets/rps_buttons.dart';
import 'package:rps_mobile_game/widgets/newGame_button.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);
  static const routeName = '/game-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rock Paper Scissor"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 15,
        shadowColor: Theme.of(context).accentColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MatchCount(),
          Divider(color: Theme.of(context).accentColor),
          Expanded(
            child: Column(
              children: [
                ResultMessage(),
                RPSbuttons(),
                ScoreCard(),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          NewGameButton(),
        ],
      ),
    );
  }
}
