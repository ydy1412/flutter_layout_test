import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_test/main.dart';
import 'package:flutter_layout_test/model/model.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  TextEditingController firstTextCtr = TextEditingController();
  TextEditingController secondTextCtr = TextEditingController();
  TextEditingController thirdTextCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appmodel = Provider.of<AppModel>(context, listen: true);
    return Container(
        child: Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: firstTextCtr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text("send"),
                    onPressed: () {
                      // print(firstTextCtr.value);
                      print("send 1 pressed");
                      appmodel.addString(firstTextCtr.text);
                      appmodel.addTextTile(firstTextCtr.text);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: secondTextCtr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text("send2"),
                    onPressed: () {
                      print("Send_2 pressed");
                      appmodel.addString(secondTextCtr.text);
                      appmodel.addTextTile(secondTextCtr.text);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: thirdTextCtr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text("send3"),
                    onPressed: () {
                      print(thirdTextCtr.text);
                      appmodel.addString(thirdTextCtr.text);
                      appmodel.addTextTile(thirdTextCtr.text);
                    },
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              child: Text(appmodel.stringField + jsonEncode(appmodel.user)),
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    ));
  }
}
