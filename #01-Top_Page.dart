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
        body: Stack(
            children: [
              //Image.asset('assets/b.jpg'),
              Positioned.fill(child: Image.asset('assets/a.jpg', fit: BoxFit.fill,),),
              Column(children: [
                Expanded(flex:4 ,child: (Container())),
                Text("Qiita Feed App", textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.bold)),
                //Image.asset("assets/350x350.jpg"),
                Text("-PlayGround-"),
                Expanded(flex:5,child: (Container())),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: Ink(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: InkWell(
                            onTap:() {},
                            child: Container(
                              height: 50,
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'ログイン',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print('Tapped Privacy Policy');
                  },
                  child: Text(
                    "ログインせずに利用する",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(flex:1, child: Container(),)
              ],
              ),]
        )
    );
  }
}