import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  String title;
  String subtitle;
  MusicCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(60.0, 30.0, 0.0, 0.0),
      width: 280.0,
      height: 400.0,
      decoration: const BoxDecoration(
          color: Color.fromARGB(210, 24, 24, 24),
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          )),
      child: Column(
        children: [
          const SizedBox(
            height: 25.0,
          ),
          Container(
            width: 230,
            height: 230,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 51),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 8),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                ]),
            child: const Center(
              child: Icon(
                Icons.music_note_rounded,
                color: Color.fromARGB(255, 179, 179, 179),
                size: 150,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 134, 134, 134),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 4.0, 15.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  CupertinoIcons.download_circle_fill,
                  color: Color.fromARGB(255, 178, 177, 177),
                  size: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
