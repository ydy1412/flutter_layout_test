import 'package:flutter/material.dart';
import 'package:flutter_layout_test/model/model.dart';
import 'package:flutter_layout_test/screen/homepage.dart';
import 'package:flutter_layout_test/screen/loginPage.dart';
import 'package:flutter_layout_test/screen/searchpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appmodel = Provider.of<AppModel>(context, listen: true);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("hello")),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(10),
            child: DrawerGenerator(appmodel.drawerTextList),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LoginPage(),
            SearchPage(),
            SearchPage(),
            SearchPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              child: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            Tab(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Tab(
              child: Icon(
                Icons.control_camera,
                color: Colors.black,
              ),
            ),
            Tab(
              child: Icon(
                Icons.handyman,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView DrawerGenerator(List<String> stringList) {
    List<ListTile> stringTileList = [];
    for (var i = 0; i < stringList.length; i++) {
      stringTileList.add(
        ListTile(
          title: Text(stringList[i]),
        ),
      );
    }
    return ListView(
      children: stringTileList,
    );
  }
}
