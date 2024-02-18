import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          height: 333.h,
          width: 333.w,
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
            "Explore a wide selection of categories, or user the search bar to find specific topics.",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
