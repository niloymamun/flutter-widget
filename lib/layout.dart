import 'package:flutter/material.dart';

void main() {
  runApp(LayoutDesign());
}

class LayoutDesign extends StatelessWidget {
  const LayoutDesign({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: 'Layout Design', home: LayoutHomePage());
  }
}

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call, color: Colors.deepPurple),
                Text('Call', style: TextStyle(fontSize: 24)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.route, color: Colors.cyan),
                Text('Route', style: TextStyle(fontSize: 24)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share, color: Colors.lightGreen),
                Text('Share', style: TextStyle(fontSize: 24)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
