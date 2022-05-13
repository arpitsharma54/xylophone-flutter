// ignore_for_file: deprecated_member_use

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumbers, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumbers);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(
            child: Text('Xylophone'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumbers: 1),
              buildKey(color: Colors.black, soundNumbers: 2),
              buildKey(color: Colors.blueGrey, soundNumbers: 3),
              buildKey(color: Colors.blue, soundNumbers: 4),
              buildKey(color: Colors.yellow, soundNumbers: 5),
              buildKey(color: Colors.green, soundNumbers: 6),
              buildKey(color: Colors.teal, soundNumbers: 7),
            ],
          ),
        ),
      ),
    );
  }
}
