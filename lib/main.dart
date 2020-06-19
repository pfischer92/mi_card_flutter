import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AvatarGlow(
                endRadius: 120.0,
                child: Material(
                  elevation: 10.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: Image.asset(
                      'images/pat.png',
                      height: 70,
                    ),
                    radius: 50.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
