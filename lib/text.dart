import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Demo());
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String selectedValue = "One";

  final List<String> items = ["One", "Two", "Three", "Four"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropdownButton Example")),
      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          items: items.map((String item) {
            return DropdownMenuItem<String>(value: item, child: Text(item));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
