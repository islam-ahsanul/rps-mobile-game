// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rps_mobile_game/models/model_provider.dart';

class NewGameButton extends StatelessWidget {
  const NewGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sender = Provider.of<MySender>(context);
    return RaisedButton(
      onPressed: () => sender.newGame(),
      child: Text(
        'New Game',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: Theme.of(context).accentColor,
    );
  }
}
