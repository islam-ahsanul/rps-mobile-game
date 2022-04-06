// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'package:rps_mobile_game/models/model_provider.dart';

class ResultMessage extends StatefulWidget {
  const ResultMessage({Key? key}) : super(key: key);

  @override
  State<ResultMessage> createState() => _ResultMessageState();
}

class _ResultMessageState extends State<ResultMessage> {
  @override
  Widget build(BuildContext context) {
    final sender = Provider.of<MySender>(context);
    var message = sender.message;
    bool isloading = sender.isLoading;
    return Container(
      // ignore: prefer_const_constructors
      child: isloading
          ? SpinKitFadingCube(
              color: Theme.of(context).accentColor,
              size: 50.0,
              duration: Duration(milliseconds: 500),
            )
          : Text(
              "$message",
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
