import 'package:flutter/cupertino.dart';

class countProvider with ChangeNotifier {
  int count = 0;
  int get getCount => count;
  void incCount() {
    count++;
    notifyListeners();
  }
}
