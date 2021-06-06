import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.yellow[600],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/Nirvana_logo.png'),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
