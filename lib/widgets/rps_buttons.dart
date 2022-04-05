// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RPSbuttons extends StatelessWidget {
  const RPSbuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Rock',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          color: Theme.of(context).accentColor,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Paper',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          color: Theme.of(context).accentColor,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Scissor',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          color: Theme.of(context).accentColor,
        ),
      ],
    );
  }
}
