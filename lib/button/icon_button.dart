import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExamplesApp());

class IconButtonExamplesApp extends StatelessWidget {
  const IconButtonExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconButton Examples',

      home: const IconButtonExamplesPage(),
    );
  }
}

class IconButtonExamplesPage extends StatefulWidget {
  const IconButtonExamplesPage({super.key});

  @override
  State<IconButtonExamplesPage> createState() => _IconButtonExamplesPageState();
}

class _IconButtonExamplesPageState extends State<IconButtonExamplesPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IconButton Video Demo')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                tooltip: 'Open menu',
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),

                tooltip: isFavorite ? 'Unfavorite' : "favorite",
                color: isFavorite ? Colors.red : null,
                iconSize: 30,
              ),
              SizedBox(width: 10),
              // disabled state
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search),
                tooltip: 'Search Disabled',
              ),
            ],
          ),

          // ===== 2. CUSTOM STYLE =====
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      splashRadius: 26,
                      color: Colors.purpleAccent,
                    ),
                  ),
                  const SizedBox(width: 12),

                  // RawMaterialButton as an alternative (more control)
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    fillColor: const Color.fromARGB(255, 2, 16, 219),
                    padding: EdgeInsets.all(12),
                    shape: CircleBorder(),
                    child: Icon(Icons.call, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Add'),
                icon: Icon(Icons.add),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                label: const Text('Edit'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share),
                label: const Text('Share'),
              ),
            ],
          ),
          // ===== 4. ICON-ONLY ALTERNATIVES =====
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: const Color.fromARGB(0, 4, 7, 226),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {},
                      onDoubleTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.thumb_up),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  GestureDetector(
                    onDoubleTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.lightbulb_outline),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ===== 5. THEMING =====
          Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                  IconTheme(
                    data: IconThemeData(color: Colors.deepPurple, size: 40),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
