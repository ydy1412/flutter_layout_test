import 'package:flutter/material.dart';
import 'package:flutter_layout_test/model/User.dart';

class AppModel extends ChangeNotifier {
  var firstTextValue = '';
  var secondTextValue = '';
  var thirdTextValue = '';
  var firstPageColor = Colors.red;
  var secondPageColor = Colors.orange;
  var thirdPageColor = Colors.orange;
  var stringField = '';
  List<String> drawerTextList = [];
  User user;

  void setUserInfo(Map<String, dynamic> userinfo) {
    user = User.fromJson(userinfo);
    user.printUserInfo();
  }

  void setFirstTextValue(String text) {
    this.firstTextValue = text;
    print(this.firstTextValue);
    notifyListeners();
  }

  void setSecondTextValue(String text) {
    this.secondTextValue = text;
    notifyListeners();
  }

  void addTextTile(String text) {
    this.drawerTextList.add(text);
    print(this.drawerTextList);
    notifyListeners();
  }

  void addString(String text) {
    this.stringField += text;
    print(this.stringField);
    notifyListeners();
  }

  void setThirdTextValue(String text) {
    this.thirdTextValue = text;
    notifyListeners();
  }
}
