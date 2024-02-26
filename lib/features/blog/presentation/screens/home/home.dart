part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Image.asset("assets/images/board1.png"),
          SmoothPageIndicator(
            controller: HomeViewModel().pageController,
            count: 1,
            effect: const WormEffect(
              activeDotColor: MyColors.primaryColor,
              dotHeight: 10,
              dotWidth: 10,
            ),
            onDotClicked: (index) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Latest Post".text.size(14).make(),
              "See All".text.size(14).make(),
            ],
          ),
          //5.h.heightBox,
          ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 15.h,
            ),
            itemBuilder: ((context, index) {
              return Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        AutoRouter.of(context).push(HomeDetailsRoute()),
                    child: Image.asset(
                      "assets/images/board1.png",
                      height: 160,
                      width: 200,
                      fit: BoxFit.cover,
                    ).cornerRadius(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "something interesting about this movies."
                          .text
                          .size(20)
                          .maxLines(2)
                          .make(),
                      Row(
                        children: [
                          const Icon(
                            FeatherIcons.clock,
                            size: 15,
                          ),
                          "6 Month ago".text.size(5).make(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "36".text.size(5).make(),
                          const Icon(
                            FeatherIcons.bookmark,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ).expand(),
                ],
              );
            }),
          )
        ],
      ),
    ));
  }
}
