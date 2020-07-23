import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(textDirection: TextDirection.ltr, child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color mainTextColor;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          generateColors();
        });
      },
      child: Container(
        color: backgroundColor,
        child: Center(
          child: Text(
            "Hey there",
            style: TextStyle(color: mainTextColor, fontSize: 64.0),
          ),
        ),
      ),
    );
  }

  void generateColors() {
    Random random = new Random();
    mainTextColor = Colors.primaries[random.nextInt(17)];
    backgroundColor = Colors.primaries[random.nextInt(17)];
    if (mainTextColor == backgroundColor) generateColors();
  }
}
