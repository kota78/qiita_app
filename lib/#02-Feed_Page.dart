import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("feed", style: TextStyle(color: Colors.black),)),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                  [
                    Card(child: ListTile(title: Text("aaa"),subtitle: Text("bbb"),leading: FlutterLogo(),)),
                    Card(child: ListTile(title: Text("aaa"),subtitle: Text("bbb"),leading: FlutterLogo(),)),
                    Card(child: ListTile(title: Text("aaa"),subtitle: Text("bbb"),leading: FlutterLogo(),)),
                  ]
              ),
            ),

            // other sliver widgets
          ],
        )
    );
  }
}