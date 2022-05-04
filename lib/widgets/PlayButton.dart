import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying = false;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: () {
        if (isPlaying) {
          isPlaying = false;
        } else {
          isPlaying = true;
        }
        setState(() {});
      },
      child: isPlaying
          ? Icon(
              Icons.pause_circle_filled_rounded,
              size: 53.0,
              color: isHover
                  ? const Color.fromARGB(255, 29, 185, 84)
                  : const Color.fromARGB(255, 255, 255, 255),
            )
          : Icon(
              Icons.play_circle_fill_rounded,
              size: 53.0,
              color: isHover
                  ? const Color.fromARGB(255, 29, 185, 84)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
    );
  }
}
