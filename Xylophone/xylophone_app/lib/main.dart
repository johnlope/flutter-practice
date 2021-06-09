import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioCache = AudioCache(
      prefix: "assets/",
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.RELEASE));

  Expanded xylophoneBar(Color color, int noteNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () {
          audioCache.play('note$noteNumber.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              xylophoneBar(
                Colors.red,
                1,
              ),
              xylophoneBar(
                Colors.orange,
                2,
              ),
              xylophoneBar(
                Colors.yellow,
                3,
              ),
              xylophoneBar(
                Colors.green,
                4,
              ),
              xylophoneBar(
                Colors.teal,
                5,
              ),
              xylophoneBar(
                Colors.blue,
                6,
              ),
              xylophoneBar(
                Colors.purple,
                7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
