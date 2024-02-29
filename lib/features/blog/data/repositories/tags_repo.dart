import 'package:blog/features/blog/data/datasources/remote/api_client.dart';
import 'package:blog/features/blog/data/datasources/remote/api_endpoint_urls.dart';
import 'package:dio/dio.dart';
import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient {
  TagsRepo();
  getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndPointUrls.tags);
      if (response.statusCode == 200) {}
    } on Exception catch (e) {
      Vx.log(e);
    }
  }
}
