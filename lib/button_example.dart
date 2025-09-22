// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buttons Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ButtonsDemoPage(),
    );
  }
}

class ButtonsDemoPage extends StatefulWidget {
  const ButtonsDemoPage({super.key});

  @override
  _ButtonsDemoPageState createState() => _ButtonsDemoPageState();
}

class _ButtonsDemoPageState extends State<ButtonsDemoPage> {
  bool _isLoading = false;
  final List<bool> _selections = [true, false, false];

  void _showMsg(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text), duration: Duration(milliseconds: 800)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Buttons Demo')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showMsg('FAB pressed'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ElevatedButton
            Text(
              'ElevatedButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _showMsg('ElevatedButton pressed'),
              child: Text('Elevated'),
            ),
            SizedBox(height: 16),

            // TextButton
            Text(
              'TextButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () => _showMsg('TextButton pressed'),
              child: Text('Text Button'),
            ),
            SizedBox(height: 16),

            // OutlinedButton
            Text(
              'OutlinedButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            OutlinedButton(
              onPressed: () => _showMsg('OutlinedButton pressed'),
              child: Text('Outlined'),
            ),
            SizedBox(height: 16),

            // IconButton
            Text(
              'IconButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () => _showMsg('IconButton pressed'),
                ),
                ElevatedButton.icon(
                  onPressed: () => _showMsg('ElevatedButton with icon'),
                  icon: Icon(Icons.send),
                  label: Text('Send'),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Disabled button example
            Text(
              'Disabled state',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: null, // disabled when onPressed is null
              child: Text('Disabled'),
            ),
            SizedBox(height: 16),

            // Loading state
            Text(
              'Loading state example',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      setState(() => _isLoading = true);
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() => _isLoading = false);
                        _showMsg('Completed');
                      });
                    },
              child: _isLoading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text('Do something'),
            ),
            SizedBox(height: 16),

            // ToggleButtons
            Text(
              'ToggleButtons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ToggleButtons(
              isSelected: _selections,
              onPressed: (int index) {
                setState(() {
                  _selections[index] = !_selections[index];
                });
              },
              children: [
                Icon(Icons.format_bold),
                Icon(Icons.format_italic),
                Icon(Icons.format_underline),
              ],
            ),
            SizedBox(height: 16),

            // InkWell (custom)
            Text(
              'InkWell (custom tappable area)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () => _showMsg('InkWell tapped'),
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Custom InkWell Button'),
              ),
            ),
            SizedBox(height: 16),

            // CupertinoButton (iOS style)
            Text(
              'CupertinoButton (iOS style)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            CupertinoButton(
              color: Colors.blue,
              child: Text('Cupertino'),
              onPressed: () => _showMsg('Cupertino pressed'),
            ),
          ],
        ),
      ),
    );
  }
}
