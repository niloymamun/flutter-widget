import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget")),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyle(color: Colors.black54, fontSize: 20),
            children: [
              TextSpan(
                text: ' Sing Up',
                style: TextStyle(
                  color: const Color.fromARGB(230, 114, 0, 245),
                  fontSize: 20,
                ),

                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('click me');
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
