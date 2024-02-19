part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Column(
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
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          100.h.heightBox,
          Container(
            height: MediaQuery.sizeOf(context).height.h - 180.h,
            width: MediaQuery.sizeOf(context).width.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  50.h.heightBox,
                  "Loing"
                      .text
                      .size(18)
                      .color(MyColors.primaryColor)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  48.h.heightBox,
                  "Email"
                      .text
                      .color(MyColors.primaryColor)
                      .align(TextAlign.left)
                      .make(),
                  VxTextField(),
                  "Password"
                      .text
                      .color(MyColors.primaryColor)
                      .align(TextAlign.left)
                      .make(),
                  VxTextField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
