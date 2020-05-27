import 'package:flutter/widgets.dart';

class JarModel with ChangeNotifier {
  String title;
  bool selected;

  String get getTitle => this.title;
  bool get getSelected => this.selected;

  void setTitle(String title) {
    this.title = title;
    notifyListeners();
  }

  void setSelected(bool status) {
    this.selected = status;
    notifyListeners();
  }
}
