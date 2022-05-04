import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(55.0, 30.0, 30.0, 0.0),
          width: 55.0,
          height: 55.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 5, 5, 5),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.keyboard_arrow_left_rounded,
            color: Colors.white,
            size: 50,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
          width: 55.0,
          height: 55.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 5, 5, 5),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.keyboard_arrow_right_rounded,
            color: Colors.white,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 1050.0,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
          width: 50.0,
          height: 50.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 46, 119, 208),
          ),
          child: const Icon(
            Icons.wifi_tethering_error_rounded,
            color: Colors.white,
            size: 30.0,
          ),
        ),

        // Profile Pill
        const SizedBox(
          width: 30.0,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
          width: 180,
          height: 45,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/IMG_6755.jpeg"),
                  ),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              const Text(
                "Manish",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 35,
              )
            ],
          ),
        ),
      ],
    );
  }
}
