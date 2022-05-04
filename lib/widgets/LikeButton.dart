import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LikeButton extends StatefulWidget {
  LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isLiked) {
          isLiked = false;
        } else {
          isLiked = true;
        }
        setState(() {});
      },
      child: isLiked
          ? const Icon(
              CupertinoIcons.heart_fill,
              size: 30.0,
              color: Color.fromARGB(255, 29, 185, 84),
            )
          : const Icon(
              CupertinoIcons.heart,
              size: 30.0,
              color: Colors.white,
            ),
    );
  }
}
