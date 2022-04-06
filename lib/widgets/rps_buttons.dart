// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rps_mobile_game/models/model_provider.dart';

class RPSbuttons extends StatelessWidget {
  const RPSbuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sender = Provider.of<MySender>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => sender.playersPick = 0,
          child: Text(
            'Rock',
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).canvasColor),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            fixedSize: MaterialStateProperty.all(Size.fromWidth(100)),
            elevation: MaterialStateProperty.all(20),
            shadowColor:
                MaterialStateProperty.all(Theme.of(context).accentColor),
          ),
        ),
        ElevatedButton(
          onPressed: () => sender.playersPick = 1,
          child: Text(
            'Paper',
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).canvasColor),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            fixedSize: MaterialStateProperty.all(Size.fromWidth(100)),
            elevation: MaterialStateProperty.all(20),
            shadowColor:
                MaterialStateProperty.all(Theme.of(context).accentColor),
          ),
        ),
        ElevatedButton(
          onPressed: () => sender.playersPick = 2,
          child: Text(
            'Scissor',
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).canvasColor),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            fixedSize: MaterialStateProperty.all(Size.fromWidth(100)),
            elevation: MaterialStateProperty.all(20),
            shadowColor:
                MaterialStateProperty.all(Theme.of(context).accentColor),
          ),
        ),
      ],
    );
  }
}
