// lib/main.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextButton Demo',

      theme: ThemeData(
        primaryColor: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurple,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
        ),
      ),
      home: TextButtonDemoPage(),
    );
  }
}

class TextButtonDemoPage extends StatelessWidget {
  const TextButtonDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextButton: Live Examples')),
      body: Column(
        children: [
          Text('1) Default Text Button'),
          SizedBox(height: 5),
          TextButton(onPressed: () {}, child: Text('Default TextButton')),
          Divider(),
          // TextButton with icon
          TextButton.icon(
            onPressed: () {},
            label: Text('Like'),
            icon: Icon(Icons.thumb_up_alt_outlined),
          ),
          Divider(),
          // Text style button
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
            ),

            child: Text('Styled Button'),
          ),
          Divider(),

          // disabled
          TextButton(onPressed: null, child: Text('Disable button')),
          Divider(),

          //Comparison: TextButton vs ElevatedButton'
          Row(
            children: [
              Expanded(
                child: TextButton(onPressed: () {}, child: Text('TextButton')),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('ElevatedButton'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
