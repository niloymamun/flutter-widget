import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SelectOptionDialog());
  }
}

class SelectOptionDialog extends StatefulWidget {
  const SelectOptionDialog({super.key});

  @override
  State<SelectOptionDialog> createState() => _SelectOptionDialogState();
}

class _SelectOptionDialogState extends State<SelectOptionDialog> {
  // My Function logic
  String selectedGender = 'Male';
  void showGenderDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Gender'),
          content: RadioGroup<String>(
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
              Navigator.pop(context);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile(title: Text('Male'), value: 'Male'),
                RadioListTile(title: Text('Female'), value: 'Female'),
                RadioListTile(title: Text('Other'), value: 'Other'),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Option Dialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // main Function
            showGenderDialog();
          },
          child: Text('Select Gender'),
        ),
      ),
    );
  }
}
