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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Red"),
                Text("Green"),
                Text("Blue"),
                Text("Orange"),
                Text("Gray"),
                Text("Pink"),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}



