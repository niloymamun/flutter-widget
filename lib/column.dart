import 'package:flutter/material.dart';

void main() {
  runApp(MyColumn());
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star, size: 40),
              Icon(Icons.star, size: 40),
              Icon(Icons.star, size: 40),
              Icon(Icons.star, size: 40),
              Icon(Icons.star, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
