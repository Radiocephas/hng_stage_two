import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(),
  ));
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMG_9672.JPG'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Image.asset('images/IMG_9672.JPG'),
      ),
    );
  }
}
