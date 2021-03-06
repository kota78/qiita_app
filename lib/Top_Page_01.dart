import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qiita_app/root.dart';


class TopPage extends StatefulWidget {
  TopPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Root()),
                              );
                            },
                            child: Container(
                              height: 50,
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            '????????????',
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
                    "?????????????????????????????????",
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