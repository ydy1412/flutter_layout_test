import 'package:flutter/material.dart';
import 'package:flutter_layout_test/model/model.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final appmodel = Provider.of<AppModel>(context, listen: true);
    return Center(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            width: size.width * 0.8,
            height: size.height * 0.2,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
            width: size.width * 0.8,
            height: size.height * 0.5,
            child: loginBox(
              appmodel: appmodel,
            ),
          ),
        ],
      ),
    );
  }
}

class loginBox extends StatelessWidget {
  final nameCtr = TextEditingController();
  final emailCtr = TextEditingController();
  final passwordCtr = TextEditingController();
  var appmodel;
  loginBox({this.appmodel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: TextFormField(
              controller: nameCtr,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: TextFormField(
              controller: emailCtr,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "test@test.com",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: TextFormField(
              controller: passwordCtr,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: FlatButton(
              minWidth: 200,
              child: Text("send"),
              color: Colors.blue,
              onPressed: () {
                print(nameCtr.text + emailCtr.text + passwordCtr.text);
                Map<String, dynamic> userInfo = {
                  'name': nameCtr.text,
                  'email': emailCtr.text,
                  'password': passwordCtr.text,
                };
                appmodel.setUserInfo(userInfo);
              },
            ),
          ),
        ],
      ),
    );
  }
}
