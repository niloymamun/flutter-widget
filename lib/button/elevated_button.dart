import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // used button theme
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
        ),
      ),

      title: 'ElevatedButton Demo',
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ElevatedButton Demo')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Click me')),
            SizedBox(height: 15),
            // custom button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: const Color.fromARGB(255, 0, 235, 90),
                elevation: 6,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),

              child: Text('Custom Button'),
            ),
            SizedBox(height: 15),
            // icon used
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.send),
              label: Text('Send'),
            ),
            SizedBox(height: 15),
            // Disable and loading state
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () async {
                      setState(() {
                        isLoading = true;
                      });
                      await Future.delayed(Duration(seconds: 3));
                      setState(() {
                        isLoading = false;
                      });
                    },
              child: isLoading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text('Submit'),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Full width'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
