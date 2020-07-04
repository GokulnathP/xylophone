import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKeys(int key, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        },
        child: Text(''),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeys(1, Colors.red),
              buildKeys(2, Colors.orange),
              buildKeys(3, Colors.yellow),
              buildKeys(4, Colors.green),
              buildKeys(5, Colors.teal),
              buildKeys(6, Colors.blue),
              buildKeys(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
