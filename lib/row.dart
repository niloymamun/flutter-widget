import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 50, width: 100),
            Container(color: Colors.green, height: 50, width: 100),
            Container(color: Colors.blue, height: 50, width: 100),
          ],
        ),
      ),
    );
  }
}
