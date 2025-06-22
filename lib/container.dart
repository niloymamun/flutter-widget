import 'package:flutter/material.dart';

void main() {
  runApp(MyContainer());
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Example')),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),

          alignment: Alignment.center,
          height: 200,
          width: 200,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),

          child: const Text(
            'Hello, Container!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
