import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body:SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 1"),
                          )
                      ),
                      Positioned(
                          top: (MediaQuery.of(context).size.width / 10),
                          left: MediaQuery.of(context).size.width / 4.5,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 2"),
                          )
                      ),
                      Positioned(
                          top: (MediaQuery.of(context).size.width / 10 * 2),
                          left: (MediaQuery.of(context).size.width / 4.5) * 2,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 3"),
                          )
                      ),
                      Positioned(
                          top: (MediaQuery.of(context).size.width / 10 * 3),
                          left: (MediaQuery.of(context).size.width / 4.5)*3,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 4"),
                          )
                      ),


                      Positioned(
                          top: (MediaQuery.of(context).size.width / 10 * 4),
                          left: (MediaQuery.of(context).size.width / 4.5)*2,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 5"),
                          )
                      ),
                      Positioned(
                          top: (MediaQuery.of(context).size.width / 10 * 5),
                          left: (MediaQuery.of(context).size.width / 4.5),
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 6"),
                          )
                      ),
                      Positioned(
                          top:(MediaQuery.of(context).size.width / 10 * 6),
                          left: 0,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.width / 10,
                            color: Colors.red,
                            child: Text("Text 7"),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}



