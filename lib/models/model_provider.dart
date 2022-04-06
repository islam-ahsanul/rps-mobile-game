import 'package:flutter/foundation.dart';
import 'dart:math';

class MySender with ChangeNotifier {
  int _matchCnt = 0;
  int _playerPoints = 0;
  int _computerPoints = 0;
  String _message = " ";
  var random = Random();

  int _playersPick = -1;

  int get matchCnt => _matchCnt;
  int get playerPoints => _playerPoints;
  int get computerPoints => _computerPoints;
  String get message => _message;

  set playersPick(int newValue) {
    var _playersPick = newValue;
    int _randInt = random.nextInt(3);
    _matchCnt++;

    if (_randInt == _playersPick) {
      _message = "Match Draw!";
    } else if (_playersPick == 0) {
      if (_randInt == 1) {
        _message = "You lost! Computer played Paper";
        _computerPoints++;
      } else if (_randInt == 2) {
        _message = "You won! Computer played Scissor";
        _playerPoints++;
      }
    } else if (_playersPick == 1) {
      if (_randInt == 0) {
        _message = "You won! Computer played Rock";
        _playerPoints++;
      } else if (_randInt == 2) {
        _message = "You lost! Computer played Scissor";
        _computerPoints++;
      }
    } else if (_playersPick == 2) {
      if (_randInt == 0) {
        _message = "You lost! Computer played Rock";
        _computerPoints++;
      } else if (_randInt == 1) {
        _message = "You won! Computer played Paper";
        _playerPoints++;
      }
    }
    notifyListeners();
  }

  void newGame() {
    _matchCnt = 0;
    _playerPoints = 0;
    _computerPoints = 0;
    _message = " ";
    _playersPick = -1;

    notifyListeners();
  }
}
