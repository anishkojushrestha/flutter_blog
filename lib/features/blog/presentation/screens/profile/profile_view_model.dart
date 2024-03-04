part of 'profile_imports.dart';

class ProfileViewModel {
  final Repository repository;

  ProfileViewModel({required this.repository});

  logout(context) async {
    var data = await repository.authRepo.logout(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.ClearAllSaveData();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).push(const OnBoardRoute());
    }
  }
}
