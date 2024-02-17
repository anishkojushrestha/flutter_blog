import 'package:flutter/material.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/board1.png",
          height: 333,
          width: 333,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
            "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
