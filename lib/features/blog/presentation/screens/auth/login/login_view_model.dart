part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login(context) async {
    var responseData = await repository.authRepo
        .login(emailController.text, passwordController.text, context);
    debugPrint(responseData.accessToken);
    if (responseData.accessToken != null) {
      Utils.saveToken(responseData.accessToken.toString());
      Utils.manipulateLogin(context);
    }
  }
}
