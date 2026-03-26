import 'package:flutter/material.dart';
import 'package:flutter_widget/test_file.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyListView());
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beautiful ListView UI")),
      body: LongList(),
    );
  }
}

//////////////////// BASIC LIST ////////////////////
class BasicsList extends StatelessWidget {
  const BasicsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ColoredTile(title: 'Title 01', color: Colors.red),
        ColoredTile(title: 'Title 02', color: Colors.yellow),
        ColoredTile(title: 'Title 03', color: Colors.deepPurple),
      ],
    );
  }
}

/////////////////////// ColoredTile ////////////////
class ColoredTile extends StatelessWidget {
  const ColoredTile({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.4),
            blurRadius: 8,
            offset: Offset(0, 5),
          ),
        ],
      ),

      child: Text(title, style: const TextStyle(fontSize: 18)),
    );
  }
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
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, color.withValues(alpha: 0.6)],
            ),
            borderRadius: BorderRadius.circular(15),
          ),

          child: ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('User $index', style: TextStyle(color: Colors.white)),
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        final color = getColor(index);
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, color.withValues(alpha: 0.6)],
            ),
            borderRadius: BorderRadius.circular(20),
          ),

          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white, fontSize: 18),
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
      itemCount: 30,
      itemBuilder: (context, index) {
        final color = getColor(index);
        return Center(
          child: Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color, color.withValues(alpha: 0.6)],
              ),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Center(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'User $index',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// 🌐 Different network images
String gitImage(int index) {
  List<String> images = [
    "https://picsum.photos/id/1011/200",
    "https://picsum.photos/id/1012/200",
    "https://picsum.photos/id/1013/200",
    "https://picsum.photos/id/1014/200",
    "https://picsum.photos/id/1015/200",
  ];
  return images[index % images.length];
}

//////////////////// CUSTOM UI ////////////////////
class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        final image = getImage(index);
        final color = getColor(index);
        return Container(
          margin: EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                Ink.image(
                  image: NetworkImage(image),
                  height: 120,
                  fit: BoxFit.cover,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
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
                  contentPadding: EdgeInsets.all(16),
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
                    'User $index',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
