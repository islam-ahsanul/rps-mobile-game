// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultMessage extends StatefulWidget {
  const ResultMessage({Key? key}) : super(key: key);

  @override
  State<ResultMessage> createState() => _ResultMessageState();
}

class _ResultMessageState extends State<ResultMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      child: Text(
        "You Lost! Computer Played Scissor",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      height: 200,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}
