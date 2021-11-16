import 'package:flutter/material.dart';
import 'package:ui_two/list_builder.dart';
import 'package:ui_two/test.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: list_builder(),

    );
  }
}