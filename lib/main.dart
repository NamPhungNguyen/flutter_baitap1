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
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Center(child: Text("A")),

                            ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                            child: Center(child: Text("B")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueGrey,
                            child: Center(child: Text("C")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            child: Center(child: Text("D")),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                              child: Center(child: Text("A")),
                              color: Colors.black12,
                            ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(child: Text("B")),
                            color: Colors.black45,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(child: Text("C")),
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(child: Text("D")),
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),

                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}



