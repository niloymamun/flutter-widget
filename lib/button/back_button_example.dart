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
  const HomePage({super.key});
  Future<bool> showExitDialog(BuildContext context) async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Exit App"),
            content: const Text("আপনি কি অ্যাপ থেকে বের হতে চান?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text("না"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text("হ্যাঁ"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        bool exit = await showExitDialog(context);
        if (!context.mounted) return;
        if (exit) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Flutter Back Button')),
        body: Center(
          child: Text(
            "Back Button Press করে দেখুন",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
