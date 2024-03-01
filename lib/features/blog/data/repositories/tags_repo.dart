import 'dart:convert';

import 'package:blog/features/blog/data/datasources/remote/api_client.dart';
import 'package:blog/features/blog/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blog/features/blog/presentation/screens/tags/tags_model.dart';

import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient {
  TagsRepo();
  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndPointUrls.tags);
      if (response.statusCode == 200) {
        final mapData = response.data;
        return tagsModelFromJson(jsonEncode(mapData));
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }
}
