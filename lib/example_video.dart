import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'FAB Demo', home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB — SnackBar Example')),
      body: const Center(child: Text('Press the FAB')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // এখানে ScaffoldMessenger সঠিকভাবে কাজ করবে
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('FAB pressed!')));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
