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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Container(color: Colors.red, height: 50)),
            Expanded(child: Container(color: Colors.green, height: 50)),
            Expanded(child: Container(color: Colors.blue, height: 50)),
          ],
        ),
      ),
    );
  }
}
