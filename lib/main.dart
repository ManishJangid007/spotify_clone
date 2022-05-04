import 'package:flutter/material.dart';
import 'BottomPanel.dart';
import 'MainPanel.dart';
import 'SidePanel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SidePanel(),
                MainPanel(),
              ],
            ),
            BottomPanel(),
          ],
        ),
      ),
    );
  }
}
