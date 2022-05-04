import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/MusicCard.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                margin: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: const Text(
                  "Downloaded Music",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MusicCard(title: "Mrwhosetheboss", subtitle: "By HRIDAY RAJ"),
                MusicCard(title: "NOW UNITED", subtitle: "By Uniters"),
                MusicCard(
                    title: "Bollywood R&B",
                    subtitle: "Arijit, Jubin and More.."),
                MusicCard(
                    title: "Happy  Oye!", subtitle: "Diljit, Hardy and More.."),
                MusicCard(
                    title: "Downloads", subtitle: "Justin, Mattew and More.."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
