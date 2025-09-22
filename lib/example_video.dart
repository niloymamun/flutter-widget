import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OutlinedButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.blue,
            side: const BorderSide(color: Colors.blue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '1) Basic Example',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Basic OutlinedButton'),
            ),

            const SizedBox(height: 20),
            const Text(
              '2) Custom Style',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green, width: 2),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 24,
                ),
                foregroundColor: Colors.green,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Custom OutlinedButton'),
            ),

            const SizedBox(height: 20),
            const Text(
              '3) With Icon (text + icon)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () => {},
              icon: const Icon(Icons.send),
              label: const Text('Send'),
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
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                    side: const BorderSide(width: 2, color: Colors.purple),
                  ),
                  child: const Icon(Icons.favorite),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: null, // disabled example
                  child: const Text('Disabled'),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              '5) State-aware style (pressed -> red border)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () => {},
              style: ButtonStyle(
                side: WidgetStateProperty.resolveWith<BorderSide>((states) {
                  // states is a Set<WidgetState>
                  if (states.contains(WidgetState.pressed)) {
                    return const BorderSide(color: Colors.red, width: 3);
                  }
                  return const BorderSide(
                    color: Color.fromARGB(255, 3, 96, 218),
                    width: 2,
                  );
                }),
              ),

              child: const Text('State-aware'),
            ),
          ],
        ),
      ),
    );
  }
}
