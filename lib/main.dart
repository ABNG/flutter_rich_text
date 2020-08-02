import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//for different method see flutter docs
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      print("click");
    };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RichText(
            text: TextSpan(
              text: "Share ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
              ),
              children: [
                TextSpan(
                  text: "Register",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  recognizer: tapGestureRecognizer,
                ),
                WidgetSpan(
                  child: Icon(Icons.share),
                  alignment: PlaceholderAlignment.middle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
