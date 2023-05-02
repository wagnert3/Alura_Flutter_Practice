import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.red, width: 75, height: 75),
                Container(color: Colors.orange, width: 75, height: 75),
                Container(color: Colors.yellow, width: 75, height: 75),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.green, width: 75, height: 75),
                Container(color: Colors.lightBlue, width: 75, height: 75),
                Container(color: Colors.blueGrey, width: 75, height: 75),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.purple, width: 75, height: 75),
                Container(color: Colors.pink, width: 75, height: 75),
                Container(color: Colors.white, width: 75, height: 75),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
