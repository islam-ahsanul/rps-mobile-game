// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewGameButton extends StatelessWidget {
  const NewGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
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
