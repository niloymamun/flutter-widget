import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OutlinedButton Demo',

      home: const OutlinedButtonDemo(),
    );
  }
}

class OutlinedButtonDemo extends StatelessWidget {
  const OutlinedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButton Examples')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '1) Basic Example',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          // Basics example
          OutlinedButton(onPressed: () {}, child: Text('Basics OutlineButton')),
          Divider(),
          const Text(
            '2) Custom Style',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.pinkAccent, width: 2),
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              foregroundColor: const Color.fromARGB(255, 3, 226, 14),
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            child: Text('Custom OutlinedButton'),
          ),
          const SizedBox(height: 20),
          const Text(
            '3) With Icon (text + icon)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.send),
            label: Text('Send'),
          ),
          const SizedBox(height: 20),
          const Text(
            '4) Icon-only (circle)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // disabled example with circleBorder
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(12),
                  side: BorderSide(width: 2, color: Colors.lightBlueAccent),
                ),
                child: Icon(Icons.favorite),
              ),
            ],
          ),

          const Text(
            '5) State-aware style (pressed -> red border)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              side: WidgetStateProperty.resolveWith<BorderSide>((states) {
                if (states.contains(WidgetState.pressed)) {
                  return BorderSide(color: Colors.red, width: 3);
                }
                return BorderSide(color: Colors.lightBlue, width: 2);
              }),
            ),

            child: Text('State-aware'),
          ),
        ],
      ),
    );
  }
}
