import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Stack(
          children: [
            Container(color: Colors.blue),
            Container(height: 400, width: 300, color: Colors.deepOrange),
            Container(
              height: 220,
              width: 200,
              color: const Color.fromARGB(255, 188, 3, 224),
            ),
          ],
        ),
      ),
    );
  }
}
