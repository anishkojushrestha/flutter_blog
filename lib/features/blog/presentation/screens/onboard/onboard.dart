import 'package:auto_route/auto_route.dart';
import 'package:blog/config/constants/my_colors.dart';
import 'package:blog/features/blog/presentation/screens/onboard/widgets/onboard_view_model.dart';
import 'package:blog/features/blog/presentation/screens/onboard/widgets/onboardsecond.dart';
import 'package:blog/features/blog/presentation/screens/onboard/widgets/onboardthird.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboardfirst.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/blog.png",
                      height: 52,
                      width: 152,
                    ),
                    const Text(
                      "BLOG",
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 63,
                ),
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ).expand(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryColor),
                    ),
                    SmoothPageIndicator(
                      controller: onBoardViewModel.pageController,
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: MyColors.primaryColor,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                      onDotClicked: (index) {},
                    ),
                    const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
