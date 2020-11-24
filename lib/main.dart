import 'package:flutter/material.dart';
import 'package:flutter_example/user_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: "nama user",
    role: "peran user",
    photoURL: "assets/Bayu.jpg",
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Doc Comment Example"),
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}
