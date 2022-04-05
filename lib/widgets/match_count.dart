import 'package:flutter/material.dart';

class MatchCount extends StatefulWidget {
  const MatchCount({Key? key}) : super(key: key);

  @override
  State<MatchCount> createState() => _MatchCountState();
}

class _MatchCountState extends State<MatchCount> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 2),
      child: const Text('Match :1',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
