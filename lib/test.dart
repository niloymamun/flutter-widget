import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call, color: Colors.deepPurple),
                Text('Call'),
              ],
            ),
            SizedBox(width: 20), // আইকন গুলোর মধ্যে gap
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.route, color: Colors.cyan), Text('Route')],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.share, color: Colors.green), Text('Share')],
            ),
          ],
        ),
      ),
    );
  }
}
