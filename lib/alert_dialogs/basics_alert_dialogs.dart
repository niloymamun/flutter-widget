import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShowAlertDialogs());
  }
}

class ShowAlertDialogs extends StatelessWidget {
  const ShowAlertDialogs({super.key});
  // AlertDialog Function
  void showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(' Alert Dialog'),
          content: Text('Do You want to continue'),
          actions: [
            // cancel Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            //ok Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter AlertDialog Tutorial")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showMyDialog(context);
          },
          child: Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
