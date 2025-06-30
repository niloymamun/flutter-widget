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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.star, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.star, size: 40),
          ],
        ),
      ),
    );
  }
}
