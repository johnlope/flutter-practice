import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylophoneBar(
                color: Colors.red,
              ),
              XylophoneBar(
                color: Colors.orange,
              ),
              XylophoneBar(
                color: Colors.yellow,
              ),
              XylophoneBar(
                color: Colors.green,
              ),
              XylophoneBar(
                color: Colors.red,
              ),
              XylophoneBar(
                color: Colors.red,
              ),
              XylophoneBar(
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneBar extends StatefulWidget {
  XylophoneBar({
    Key? key,
    this.color = const Color(0xFFFFE306),
  }) : super(key: key);

  final Color color;

  @override
  _XylophoneBarState createState() => _XylophoneBarState();
}

class _XylophoneBarState extends State<XylophoneBar> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //  final AudioCache audioCache = AudioCache();
        //    audioCache.play('assets/note1.wav');
      },
      child: Container(
        //   margin: EdgeInsets.symmetric(vertical: 0.2),
        color: widget.color,
        child: Center(
          child: Text('Axz'),
        ),
        height: 90.0,
      ),
    );
  }
}
