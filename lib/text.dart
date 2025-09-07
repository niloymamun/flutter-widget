import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  const MyTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget")),
      body: Center(
        child: Text(
          'Welcome Coding with mamun',
          style: TextStyle(
            fontSize: 40.00,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            letterSpacing: 10,
            wordSpacing: 20,
            fontWeight: FontWeight.w900,
            backgroundColor: const Color.fromARGB(255, 209, 231, 9),
            shadows: [
              Shadow(
                color: Colors.blueAccent,
                offset: Offset(2, 1),
                blurRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
