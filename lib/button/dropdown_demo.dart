import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DropdownDemoClass());
  }
}

class DropdownDemoClass extends StatefulWidget {
  const DropdownDemoClass({super.key});

  @override
  State<DropdownDemoClass> createState() => _DropdownDemoClassState();
}

class _DropdownDemoClassState extends State<DropdownDemoClass> {
  String selectedValue = 'One';
  final List<String> items = ['One', 'Two', 'Three', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropdownButton Example")),
      body: Center(
        child: DropdownButtonFormField<String>(
          hint: Text("একটি অপশন নির্বাচন করুন"),
          isExpanded: true,
          dropdownColor: Colors.grey[200],
          decoration: InputDecoration(
            // labelText: selectedValue,
            border: OutlineInputBorder(),
          ),
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
