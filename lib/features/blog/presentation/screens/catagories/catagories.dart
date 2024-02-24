part of 'catagories_imports.dart';

@RoutePage()
class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
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
      body: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: "${index + 1}".text.make(),
                title: "Flutter UI Kit".text.make(),
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
          }),
    );
  }
}
