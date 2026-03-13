import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyImageWidget());
  }
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Widget Example")),

      // assets images example
      // body: Center(
      //   child: Image.asset(
      //     "assets/images.png",
      //     width: 200,
      //     height: 200,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // Network images example
      // body: Center(
      //   child: Image.network(
      //     "https://imgs.search.brave.com/GU2UgGqkj42nVwlh0sxDx6CKjyBdMeqSdLiOHupwuyg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vRUFGdDk1/d2ZOZGsvMS8wLzE2/MDB3L2NhbnZhLXB1/cnBsZS1hbmQtZ3Jl/ZW4tc2ltcGxlLXdv/bWFuLWluc3RhZ3Jh/bS1wcm9maWxlLXBp/Y3R1cmUtVmJyNkdS/eTVZYTQuanBn",
      //     width: 250,
      //     height: 250,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // Beautiful Image UI
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),

            image: DecorationImage(
              image: NetworkImage(
                'https://imgs.search.brave.com/GU2UgGqkj42nVwlh0sxDx6CKjyBdMeqSdLiOHupwuyg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vRUFGdDk1/d2ZOZGsvMS8wLzE2/MDB3L2NhbnZhLXB1/cnBsZS1hbmQtZ3Jl/ZW4tc2ltcGxlLXdv/bWFuLWluc3RhZ3Jh/bS1wcm9maWxlLXBp/Y3R1cmUtVmJyNkdS/eTVZYTQuanBn',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
// Circle Avatar example

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatar Example"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),

            const SizedBox(height: 20),

            // Name
            const Text(
              "Mamun Ahmed",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // Subtitle
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
