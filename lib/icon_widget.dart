import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IconWidget());
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icon Widget Example")),
      //Basic Icon Example
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //Multiple Icons
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue.shade900),
                Text('Home'),
              ],
            ),
            SizedBox(width: 20),
            Icon(Icons.favorite, size: 40, color: Colors.red.shade900),
            SizedBox(width: 20),
            Icon(Icons.settings, size: 40, color: Colors.green.shade900),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
