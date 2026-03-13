import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController textEditingController = TextEditingController();
  void showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter Your Name'),
          content: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: 'Type Your name here',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String name = textEditingController.text;
                print('User Name is $name');
                textEditingController.clear();
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField AlertDialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Function Execute
            showInputDialog(context);
          },
          child: Text('Open Dialog'),
        ),
      ),
    );
  }
}
