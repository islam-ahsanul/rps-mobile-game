import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rps_mobile_game/models/model_provider.dart';

class MatchCount extends StatefulWidget {
  const MatchCount({Key? key}) : super(key: key);

  @override
  State<MatchCount> createState() => _MatchCountState();
}

class _MatchCountState extends State<MatchCount> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final sender = Provider.of<MySender>(context);
    int matchCnt = sender.matchCnt;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 2),
      child: Text(
        'Match : $matchCnt',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
