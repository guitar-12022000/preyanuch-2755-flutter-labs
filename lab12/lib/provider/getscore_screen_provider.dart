import 'package:flutter/cupertino.dart';

class GetScoreScreenProvider extends ChangeNotifier {
  int _getScore = 0;
  void increseScore() {
    _getScore++;
    notifyListeners();
  }

  void resetScore() {
    _getScore = 0;
    notifyListeners();
  }

  int get getScore => _getScore;
}
