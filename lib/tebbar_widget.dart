import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter TabBar Tutorial'),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            indicatorWeight: 4,
            labelColor: Colors.white70,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'Setting'),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Center(child: Text('Home Screen', style: TextStyle(fontSize: 22))),
            Center(
              child: Text('Profile Screen', style: TextStyle(fontSize: 22)),
            ),
            Center(
              child: Text('Setting Screen', style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
      ),
    );
  }
}
