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
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.authBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
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
              PrimaryButton(
                title: "Login",
                onPressed: () => AutoRouter.of(context).push(LoginRoute()),
              ),
              SizedBox(
                height: 12.h,
              ),
              OutlineButton(
                title: "Register",
                onPressed: () => AutoRouter.of(context).push(RegisterRoute()),
              ),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutlinButton extends StatelessWidget {
  const OutlinButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
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
    );
  }
}
