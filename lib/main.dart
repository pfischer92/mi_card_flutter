import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'Helper.dart';

GetIt locator = GetIt();

void main() {
  setupLocator();
  runApp(MyApp());
}

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}

class _MyAppState extends State<MyApp> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  final String number = "+49 160 91332419";
  final String email = "patrick.fischer.privat@gmail.com";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Patrick Fischer',
                  style: TextStyle(
                      fontFamily: 'PressStart2P-Regular',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Software Engineer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Bachelor Computer Science FHNW',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(leading: Icon(Icons.phone), title: Text(number)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(leading: Icon(Icons.mail), title: Text(email)),
                    ],
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

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
