import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        width: 342.0,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 40.0,
            ),
            const SizedBox(
              height: 13.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.home_filled,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 40.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Calibre',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.search,
                  color: Color.fromARGB(255, 185, 184, 184),
                  size: 40.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Color.fromARGB(255, 185, 184, 184),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Calibre',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.my_library_music,
                  color: Color.fromARGB(255, 185, 184, 184),
                  size: 40.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Your Library",
                  style: TextStyle(
                    color: Color.fromARGB(255, 185, 184, 184),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Calibre',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.plus_square_fill,
                  color: Color.fromARGB(255, 185, 184, 184),
                  size: 40.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Create Playlist",
                  style: TextStyle(
                    color: Color.fromARGB(255, 185, 184, 184),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Calibre',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.heart_fill,
                  color: Color.fromARGB(255, 185, 184, 184),
                  size: 40.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Liked Songs",
                  style: TextStyle(
                    color: Color.fromARGB(255, 185, 184, 184),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Calibre',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 0.3,
              color: Color.fromARGB(255, 208, 207, 207),
            ),
            Container(
              height: 495.0,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(tt: "Bollywood R&B"),
                    MyText(tt: "Mine"),
                    MyText(tt: "Happy Oye!"),
                    MyText(tt: "This is AP Dhillon"),
                    MyText(tt: "Daily Mix 2"),
                    MyText(tt: "Mega Hits Mix"),
                    MyText(tt: "Bollywood Butter"),
                    MyText(tt: "Vlog No Copyright Music"),
                    MyText(tt: "6 Underground Soundtrack"),
                    MyText(tt: "MrWhosetheboss"),
                    MyText(tt: "Downloads"),
                    MyText(tt: "NOW UNITED"),
                    MyText(tt: "Playlist 1"),
                    MyText(tt: "Playlist 2"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  String tt;
  MyText({
    Key? key,
    required this.tt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 14.0,
        ),
        Text(
          tt,
          style: const TextStyle(
            color: Color.fromARGB(255, 185, 184, 184),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Calibre',
          ),
        ),
      ],
    );
  }
}
