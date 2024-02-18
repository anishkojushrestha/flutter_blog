import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          height: 333.h,
          width: 333.w,
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
            "Customerize your reading experince and join the conversation by creating account.",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
