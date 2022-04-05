// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// git test

import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Game Screen"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Match :1',
              textAlign: TextAlign.center,
            ),
            Divider(),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "This is the line",
                      textAlign: TextAlign.center,
                    ),
                    height: 200,
                    alignment: Alignment.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Rock'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Paper'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Scissor'),
                      ),
                    ],
                  ),
                  Card(
                    child: Column(children: [
                      Text('Score'),
                      Text('Score'),
                      Text('Score'),
                    ]),
                  )
                ],
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {},
              child: Text('New Game'),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor,
            ),
          ],
        ));
  }
}
