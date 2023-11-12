import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(title: 'Text App', home: TextApp()));
}

class TextApp extends StatefulWidget {
  const TextApp({super.key});

  @override
  State<TextApp> createState() => _TextAppState();
}

class _TextAppState extends State<TextApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            
          ),
        )),
      ),
    );
  }
}
