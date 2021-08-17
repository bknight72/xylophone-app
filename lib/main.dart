import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static final AudioCache player = AudioCache();

  void playSound(int noteNum) {
    player.play('note$noteNum.wav');
  }

  Expanded buildKey(Color buttonColor, int noteNum) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
        onPressed: () {
          playSound(noteNum);
        },
        child: Container(
          margin: EdgeInsets.all(0.0),
          color: buttonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.teal, 6),
              buildKey(Colors.blue, 7),
              buildKey(Colors.deepPurple, 8),
            ],
          ),
        ),
      ),
    );
  }
}
