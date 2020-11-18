import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Playing Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  playSound(
                      "http://95.211.162.98/get.php?q=YTo1OntzOjU6InRva2VuIjtzOjQ1NjoiYkZKb01ucEpia1Y1VjA1dEwySlVSamxEU2pFeloxaElOemRDUzFWSlZuSTNObVJ4WkZwdllYQm9SamM1TWpVd01WQnRXR3QyVG5aamFTOUlSRGhSYW5oM2NsTjRNRkF2ZDNoUlQyWnVZVnAyZFdVMFdWbDVaR3MwTWtOTlRHMWtVM0JyU0hnM2IzQjJZbEZsUVdKMVJURkhaMlZwU2t4UWRteGllVkF6WmtodldWVkNlV0k1TDFCaldYWjZjR1F2TDB0dWVVeEhTbEo1YWpGVGVXcHdSVzR2TTBwNU0xSlpiV0ZKUXpsR2NucGxXVTlMZEhGaFJuZGpVV3BYVXl0U1ZGbHZiWEppZFd3eWNFaEtOMm8wY2s5amRVOXphMFZDWTJSUGEyazJLME5qZFVoTFpHYzVVekJLWlRGTmRVMUNNU3QxUWpGbFdWVTNRbVptWTNkMmJGRkNVMDgxUlRsNlowOVdZVkJZT1VoR1dUUm5XbUpYY0Vac2JIQnNUbVYzYjJsVU9HVjFZVGxJTlhSSlRtcHNjbkpIUlVWMlNuaExLMkZLVTNJNWNsa2pJeU13TlRJek1Ua3pORGN3TkRBd0l5TWpNalkzIjtzOjQ6InNpdGUiO3M6NzoibXAzY2xhbiI7czozOiJrZXkiO3M6MzI6ImU2OGI0Yzk1Y2IwNmI4MDhkZDU3OTk5ZGI4MThiNjczIjtzOjM6InRpZCI7czoxOToiMzcxNzQ1NDM4XzQ1NjM1ODY1MSI7czo4OiJmaWxlbmFtZSI7czoyNToiSnVzdGluX0JpZWJlcl8tX0JveWZyaWVuZCI7fQ==&tt=1&get=1&.mp3");
                },
                child: Text("Play"),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text("Pause"),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text("Stop"),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text("Resume"),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
