import 'package:flutter/material.dart';
import 'package:spotify_clone/MainPanelFirstRow.dart';
import 'package:spotify_clone/MainPanelSecondRow.dart';
import 'package:spotify_clone/MainPanelThirdRow.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 926.0,
        width: 1578.0,
        decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 18, 18, 18),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 185, 84),
              Color.fromARGB(255, 17, 56, 31),
              Color.fromARGB(255, 18, 18, 18),
              Color.fromARGB(255, 11, 11, 11)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FirstRow(),
              ThirdRow(),
              SecondRow(),
            ],
          ),
        ),
      ),
    );
  }
}
