import 'package:flutter/material.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/board3.png",
          height: 333,
          width: 333,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
            "Explore a wide selection of categories, or user the search bar to find specific topics.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
