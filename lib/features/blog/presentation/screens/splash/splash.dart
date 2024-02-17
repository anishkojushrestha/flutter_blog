part of 'splash_import.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToHome();

    super.initState();
  }

  moveToHome() async {
    await Future.delayed(const Duration(seconds: 4), () {
      AutoRouter.of(context).push(const OnBoardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
          child: FadedScaleAnimation(
        child: Image.asset(
          "assets/icons/blog.png",
          height: 150,
          width: 339,
        ),
      )),
    );
  }
}
