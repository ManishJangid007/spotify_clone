import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 60.0,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: const Text(
                  "Good morning",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            children: const [
              SizedBox(
                width: 60.0,
              ),
              MusicTile(
                title: "Liked Songs",
                accentColor: Color.fromARGB(255, 129, 120, 230),
              ),
              SizedBox(
                width: 30.0,
              ),
              MusicTile(
                title: "Now United",
                accentColor: Color.fromARGB(255, 171, 229, 244),
              ),
              SizedBox(
                width: 30.0,
              ),
              MusicTile(
                title: "Bollywood Butter",
                accentColor: Color.fromARGB(255, 236, 30, 50),
              ),
              SizedBox(
                width: 30.0,
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            children: const [
              SizedBox(
                width: 60.0,
              ),
              MusicTile(
                title: "Romentic Mix",
                accentColor: Color.fromARGB(255, 230, 191, 191),
              ),
              SizedBox(
                width: 30.0,
              ),
              MusicTile(
                title: "Cardio",
                accentColor: Color.fromARGB(255, 220, 145, 143),
              ),
              SizedBox(
                width: 30.0,
              ),
              MusicTile(
                title: "Daily Mix",
                accentColor: Color.fromARGB(255, 176, 221, 192),
              ),
              SizedBox(
                width: 30.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MusicTile extends StatelessWidget {
  final String title;
  final Color accentColor;
  const MusicTile({Key? key, required this.title, required this.accentColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 460,
      height: 120,
      decoration: const BoxDecoration(
        color: Color.fromARGB(150, 51, 51, 51),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: accentColor,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(3.0, 1.5),
                    blurStyle: BlurStyle.normal,
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 26, 26, 26)),
              ],
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(8),
              ),
            ),
            child: const Center(
              child: Icon(
                CupertinoIcons.music_note_2,
                size: 60,
                color: Color.fromARGB(255, 61, 61, 61),
              ),
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
