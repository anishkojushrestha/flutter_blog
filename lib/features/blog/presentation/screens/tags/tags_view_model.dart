part of 'tags_imports.dart';

class TagsViewModel {
  final Repository repository;

  TagsViewModel({required this.repository});
  final VelocityBloc<TagsModel> tagsModelBoc =
      VelocityBloc<TagsModel>(TagsModel());

  fetchAllTags() async {
    var tagsData = await repository.tagsRepo.getAllTags();
    if (tagsData.status == 1) {
      tagsModelBoc.onUpdateData(tagsData);
    }
  }
}
