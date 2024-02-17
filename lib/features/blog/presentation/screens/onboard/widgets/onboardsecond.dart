import 'package:flutter/material.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/board2.png",
          height: 333,
          width: 333,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
            "Customerize your reading experince and join the conversation by creating account.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
