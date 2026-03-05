import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ToggleExample());
  }
}

class ToggleExample extends StatefulWidget {
  const ToggleExample({super.key});

  @override
  _ToggleExampleState createState() => _ToggleExampleState();
}

class _ToggleExampleState extends State<ToggleExample> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToggleButtons Example")),
      body: Center(
        child: ToggleButtons(
          isSelected: isSelected,
          onPressed: (int index) {
            setState(() {
              print(isSelected[index]);
              isSelected[index] = !isSelected[index];
              print(isSelected[index]);
            });
          },
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
      ),
    );
  }
}
