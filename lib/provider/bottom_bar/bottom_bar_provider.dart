import 'package:flutter/foundation.dart';

class BottomBarProvider with ChangeNotifier , DiagnosticableTreeMixin {

  late int _index = 0;
  int get index => _index;

  void onNavigate(int index){
    _index = index;
    notifyListeners();
  }
}