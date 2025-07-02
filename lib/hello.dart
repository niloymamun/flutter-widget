import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World')),
        body: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('Hello World')),
        ),
      ),
    );
  }
}
