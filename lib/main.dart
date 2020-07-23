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
            style: TextStyle(
                color: mainTextColor,
                fontSize: 90.0,
                fontFamily: 'DancingScript',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ]),
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
