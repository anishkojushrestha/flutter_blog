part of 'tags_imports.dart';

@RoutePage()
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;
  @override
  void initState() {
    // TODO: implement initState
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Catagories".text.size(16).make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus))
        ],
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBoc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
                itemCount: state.data.tags!.length,
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemBuilder: (context, index) {
                  var tagsData = state.data.tags![index];
                  return Card(
                    child: ListTile(
                      leading: "${index + 1}".text.make(),
                      title: tagsData.title!.text.make(),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.edit),
                              color: Colors.green,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.delete),
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
          return SizedBox();
        },
      ),
    );
  }
}
