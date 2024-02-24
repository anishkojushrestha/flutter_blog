part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: FadedScaleAnimation(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      MyAssets.AppLogo,
                      height: 52,
                      width: 152,
                    ),
                    Text(
                      "BLOG",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Container(
                  height: MediaQuery.of(context).size.height.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Center(
                          child: "Login"
                              .text
                              .size(18)
                              .color(MyColors.primaryColor)
                              .fontWeight(FontWeight.w700)
                              .make(),
                        ),
                        SizedBox(height: 48.h),
                        "Email"
                            .text
                            .color(MyColors.primaryColor)
                            .align(TextAlign.left)
                            .make(),
                        const VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.email),
                        ),
                        SizedBox(height: 20.h),
                        "Password"
                            .text
                            .color(MyColors.primaryColor)
                            .align(TextAlign.left)
                            .make(),
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.lock),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180.w,
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero,
                                value: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (Value) {},
                                title: "Remember Me".text.size(14).make(),
                              ),
                            ),
                            "Forget Password".text.size(14.sp).make(),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        PrimaryButton(
                            title: "Login",
                            onPressed: () =>
                                AutoRouter.of(context).push(GeneralRoute())),
                        SizedBox(height: 20.h),
                        "Don't have an account?"
                            .richText
                            .size(14)
                            .bold
                            .color(MyColors.primaryColor)
                            .withTextSpanChildren([
                          TextSpan(
                              text: "Sign Up?",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => AutoRouter.of(context)
                                    .push(RegisterRoute()),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700))
                        ]).makeCentered(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
