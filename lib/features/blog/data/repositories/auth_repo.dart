import 'dart:convert';

import 'package:blog/features/blog/data/datasources/remote/api_client.dart';
import 'package:blog/features/blog/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blog/features/blog/data/models/message_model.dart';
import 'package:blog/features/blog/presentation/screens/auth/login/login_model.dart';

import 'package:velocity_x/velocity_x.dart';

class AuthRepo extends ApiClient {
  AuthRepo();

  Future<LoginModel> login(String email, String password, context) async {
    Map body = {"email": email, "password": password};
    try {
      final response =
          await postRequest(path: ApiEndPointUrls.Login, body: body);
      if (response.statusCode == 200) {
        final mapData = response.data;
        return loginModelFromJson(jsonEncode(mapData));
      } else {
        LoginModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }

  Future<MessageModel> logout(context) async {
    try {
      final response = await postRequest(path: ApiEndPointUrls.Logout);
      if (response.statusCode == 200) {
        final mapData = response.data;
        return messageModelFromJson(jsonEncode(mapData));
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      MessageModel();
    }
    return MessageModel();
  }
}
