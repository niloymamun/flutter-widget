import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beautiful List UI',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          title: const Text("Beautiful ListView UI"),

          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 255, 0, 0),
            isScrollable: true,
            indicatorColor: Colors.deepPurpleAccent,
            tabs: [
              Tab(text: "Basic"),
              Tab(text: "Long"),
              Tab(text: "Grid"),
              Tab(text: "Horizontal"),
              Tab(text: "Custom"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BasicList(),
            LongList(),
            GridList(),
            HorizontalList(),
            CustomList(),
          ],
        ),
      ),
    );
  }
}

//////////////////// BASIC LIST ////////////////////

class BasicList extends StatelessWidget {
  const BasicList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ColoredTile(title: "Item 1", color: Colors.red),
        ColoredTile(title: "Item 2", color: Colors.orange),
        ColoredTile(title: "Item 3", color: Colors.green),
      ],
    );
  }
}

class ColoredTile extends StatelessWidget {
  final String title;
  final Color color;

  const ColoredTile({required this.title, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.4),
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

//////////////////// LONG LIST ////////////////////

class LongList extends StatelessWidget {
  const LongList({super.key});

  Color getColor(int index) {
    List<Color> colors = [
      Colors.purple,
      Colors.blue,
      Colors.teal,
      Colors.orange,
      Colors.pink,
    ];
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        final color = getColor(index);
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, color.withValues(alpha: 0.6)],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: Text(
              "User $index",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

//////////////////// GRID LIST ////////////////////

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blueAccent],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Item $index",
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}

//////////////////// HORIZONTAL LIST ////////////////////

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          width: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.pink, Colors.orange],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withValues(alpha: 0.4),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(
              "Item $index",
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}

//////////////////// CUSTOM UI ////////////////////

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              title: Text("User $index"),
              subtitle: const Text("UI Designer"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
    );
  }
}
