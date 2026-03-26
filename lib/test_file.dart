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
      itemCount: 30,
      itemBuilder: (context, index) {
        final color = getColor(index);
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, color.withValues(alpha: 0.6)],
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
        return Center(
          child: Container(
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
          ),
        );
      },
    );
  }
}

// 🌐 Different network images
String getImage(int index) {
  List<String> images = [
    "https://picsum.photos/id/1011/200",
    "https://picsum.photos/id/1012/200",
    "https://picsum.photos/id/1013/200",
    "https://picsum.photos/id/1014/200",
    "https://picsum.photos/id/1015/200",
  ];
  return images[index % images.length];
}

// 🎨 color method
Color getColor(int index) {
  List<Color> colors = [
    Colors.purple,
    Colors.blue,
    Colors.teal,
    Colors.orange,
    Colors.pink,
    Colors.deepPurple,
    Colors.green,
    Colors.redAccent,
  ];
  return colors[index % colors.length];
}

//////////////////// CUSTOM UI ////////////////////

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        final image = getImage(index);
        final color = getColor(index);

        return Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge, // 👉 important for image
            child: Stack(
              children: [
                // 🌐 Background Image
                Ink.image(
                  image: NetworkImage(image),
                  height: 120,
                  fit: BoxFit.cover,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      //color: color.withValues(alpha: 0.5),
                      gradient: LinearGradient(
                        colors: [
                          color.withValues(alpha: 0.7),
                          Colors.black.withValues(alpha: 0.3),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),

                ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "User $index",
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    "UI Designer",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
