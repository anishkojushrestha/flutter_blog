part of 'addpost_imports.dart';

@RoutePage()
class Addpost extends StatefulWidget {
  const Addpost({super.key});

  @override
  State<Addpost> createState() => _AddpostState();
}

class _AddpostState extends State<Addpost> {
  QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Post".text.make(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.check),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          20.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                  "https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png"),
              IconButton(
                onPressed: () {},
                icon: Icon(FeatherIcons.camera),
                color: MyColors.primaryColor,
              )
            ],
          ),
          20.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Title",
          ),
          20.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug",
          ),
          20.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Catagories".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Catagories".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.heightBox,
        ],
      ),
    );
  }
}
