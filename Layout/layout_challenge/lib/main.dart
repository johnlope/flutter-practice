import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              width: 100.0,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    color: Colors.green[400],
                    height: 100.0,
                    width: 100.0,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              width: 100.0,
            )
          ],
        ),
      ),
    ));
  }
}
