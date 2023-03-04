import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  // ignore: use_key_in_widget_constructors
  const MySquare({required this.child});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 400,
              color: Colors.deepPurple[100],
              child: Center(
                child: Text(
                  child,
                  style: const TextStyle(fontSize: 40),
            )),
        ),
    );
  }
}