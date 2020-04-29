import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  final player = AudioCache();

  Widget buildKey({ int note, Color color }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$note.wav');
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.green),
              buildKey(note: 5, color: Colors.teal),
              buildKey(note: 6, color: Colors.blue),
              buildKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
