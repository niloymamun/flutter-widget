import 'package:flutter/material.dart';

void main() {
  runApp(NewLayoutDesign());
}

class NewLayoutDesign extends StatelessWidget {
  const NewLayoutDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.pinkAccent, height: 400, width: 300),
          Container(color: Colors.amber, height: 220, width: 200),
        ],
      ),
    );
  }
}
