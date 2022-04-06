// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).accentColor,
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Container(
        height: 250,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Score:',
                style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).canvasColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        'You: 2',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      leading: Icon(
                        Icons.account_circle,
                        size: 50,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(
                        Icons.laptop_mac_outlined,
                        size: 50,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        'Computer: 2',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
