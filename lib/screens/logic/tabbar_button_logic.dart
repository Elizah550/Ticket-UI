import 'package:flutter/material.dart';

class ButtonSelectionModel extends ChangeNotifier {
  bool _isUpcomingSelected = true;
  bool _isHistorySelected = false;

  bool get isUpcomingSelected => _isUpcomingSelected;
  bool get isHistorySelected => _isHistorySelected;

  void selectUpcoming() {
    _isUpcomingSelected = true;
    _isHistorySelected = false;
    notifyListeners();
  }

  void selectHistory() {
    _isUpcomingSelected = false;
    _isHistorySelected = true;
    notifyListeners();
  }
}
