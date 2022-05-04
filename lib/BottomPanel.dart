import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/LikeButton.dart';
import 'widgets/PlayButton.dart';

class BottomPanel extends StatelessWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 1920.0,
        height: 130.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 24, 24),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 22.0,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 8.0,
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/legion.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 25.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Night Sky",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Mattew Parker",
                  style: TextStyle(
                    color: Color.fromARGB(255, 185, 184, 184),
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 38.0,
            ),
            LikeButton(),
            const SizedBox(
              width: 300.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.shuffle,
                        size: 28.0,
                        color: Color.fromARGB(255, 101, 101, 101),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Icon(
                        Icons.skip_previous_rounded,
                        size: 45.0,
                        color: Color.fromARGB(255, 130, 130, 130),
                      ),
                      SizedBox(
                        width: 28.0,
                      ),
                      PlayButton(),
                      SizedBox(
                        width: 28.0,
                      ),
                      Icon(
                        Icons.skip_next_rounded,
                        size: 45.0,
                        color: Color.fromARGB(255, 130, 130, 130),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Icon(
                        Icons.downloading_rounded,
                        size: 28.0,
                        color: Color.fromARGB(255, 29, 185, 84),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "0:01",
                        style: TextStyle(
                            color: Color.fromARGB(255, 137, 136, 136),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        width: 650.0,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 137, 136, 136),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text(
                        "4:15",
                        style: TextStyle(
                            color: Color.fromARGB(255, 137, 136, 136),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 245,
            ),
            const Icon(
              CupertinoIcons.music_albums_fill,
              size: 28.0,
              color: Color.fromARGB(255, 136, 136, 136),
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Icon(
              Icons.speaker_group_rounded,
              size: 28.0,
              color: Color.fromARGB(255, 136, 136, 136),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Volume(),
            const SizedBox(
              width: 12.0,
            ),
            const Icon(
              Icons.close_fullscreen_rounded,
              size: 28.0,
              color: Color.fromARGB(255, 136, 136, 136),
            ),
          ],
        ),
      ),
    );
  }
}

class Volume extends StatefulWidget {
  Volume({Key? key}) : super(key: key);

  @override
  State<Volume> createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  bool isMute = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (isMute) {
              isMute = false;
            } else {
              isMute = true;
            }
            setState(() {});
          },
          child: isMute
              ? const Icon(
                  Icons.volume_mute_rounded,
                  size: 30.0,
                  color: Color.fromARGB(255, 136, 136, 136),
                )
              : const Icon(
                  Icons.volume_up_rounded,
                  size: 30.0,
                  color: Color.fromARGB(255, 136, 136, 136),
                ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Container(
          width: 135.0,
          height: 5.5,
          decoration: isMute
              ? const BoxDecoration(
                  color: Color.fromARGB(255, 137, 136, 136),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                )
              : const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
        ),
      ],
    );
  }
}
