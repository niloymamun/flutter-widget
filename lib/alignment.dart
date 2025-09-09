import 'package:flutter/material.dart';

void main() => runApp(const AlignDemoApp());

class AlignDemoApp extends StatelessWidget {
  const AlignDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Align Widget Masterclass')),
        body: AnimatedAlignDemo(),
      ),
    );
  }
}

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});
  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  Alignment _align = Alignment.topLeft;

  void _toggle() {
    setState(() {
      _align = _align == Alignment.topLeft
          ? Alignment.bottomRight
          : Alignment.topLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.grey.shade200,
            child: AnimatedAlign(
              alignment: _align,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(width: 80, height: 80, color: Colors.indigo),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: _toggle,
            child: const Text('Toggle'),
          ),
        ),
      ],
    );
  }
}
