import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardWidget());
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(title: Text("Flutter Card Widget")),

      // Basic Syntax Care widget
      // body: Center(
      //   child: Card(
      //     elevation: 8,
      //     margin: EdgeInsets.all(20),
      //     child: Padding(
      //       padding: EdgeInsets.all(16),
      //       child: Text(
      //         "Welcome to Flutter Card widget",
      //         style: TextStyle(fontSize: 18),
      //       ),
      //     ),
      //   ),
      // ),

      //Beautiful Card UI Example
      body: Center(
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
                SizedBox(height: 10),
                Text(
                  'Al Mamun',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text('Flutter Developer', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue, size: 40),
                    SizedBox(width: 10),
                    Icon(Icons.linked_camera, color: Colors.pink, size: 40),
                    SizedBox(width: 10),
                    Icon(Icons.email, color: Colors.green, size: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
