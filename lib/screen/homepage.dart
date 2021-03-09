import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              // width: size.width,
              // margin: EdgeInsets.only(bottom: 10),
              height: size.height * 0.4,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  ListView(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    children: generateRowBoxList(5),
                  ),
                  Container(
                    color: Colors.orange,
                    margin: EdgeInsets.all(10),
                    width: size.width,
                    height: size.height * 0.1,
                  ),
                ],
              )),
          Container(
            width: size.width,
            height: size.height * 1,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  List<Widget> generateRowBoxList(int box_count) {
    List<Widget> rowboxList = List<Widget>.generate(
      box_count,
      (int index) => Container(
        color: Colors.red,
        height: 50,
        width: 50,
      ),
    );
    return rowboxList;
  }
}
