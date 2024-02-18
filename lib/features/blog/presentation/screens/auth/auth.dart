part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/auth_bg.png"),
        ),
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    MyAssets.AppLogo,
                    height: 52.h,
                    width: 152.w,
                  ),
                  Text(
                    "BLOG",
                    style: TextStyle(
                        color: MyColors.primaryColor,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "Explore the world,\n Billions of Thoughts",
                style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 12.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  minimumSize: Size(MediaQuery.of(context).size.width, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  minimumSize: Size(MediaQuery.of(context).size.width, 44),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
