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
        primarySwatch: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          // অ্যাপ-লেভেল টেক্সটবাটন থিম (optional)
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurple,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ),
      home: TextButtonDemoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextButtonDemoPage extends StatelessWidget {
  const TextButtonDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextButton: Live Examples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1) Default TextButton',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            TextButton(onPressed: () {}, child: Text('Default TextButton')),

            Divider(),

            Text(
              '2) TextButton.icon (Icon + Label)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.thumb_up_alt_outlined),
              label: Text('Like'),
            ),

            Divider(),

            Text(
              '3) Styled with TextButton.styleFrom (background + foreground)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue, // gives a filled look (optional)
                foregroundColor: Colors.white, // text/icon color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Styled Button'),
            ),

            Divider(),

            Text(
              '4) Disabled TextButton (onPressed: null)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: null, // disabled
              child: Text('Disabled Button'),
            ),

            Divider(),

            Text(
              '6) Comparison: TextButton vs ElevatedButton',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('TextButton'),
                  ),
                ),
                SizedBox(width: 12),
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
      ),
    );
  }
}
