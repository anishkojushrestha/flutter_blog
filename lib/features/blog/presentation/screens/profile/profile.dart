part of 'profile_imports.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FeatherIcons.logOut))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 450,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/board1.png"),
                  ),
                  20.heightBox,
                  "Ram shrestha".text.bold.xl2.white.make(),
                  10.heightBox,
                  "Ram@gmail.com".text.xl.white.make(),
                  20.heightBox,
                  "ram is a software engineer who is more passionate about technology. His ambition towards technology is huge."
                      .text
                      .xl
                      .center
                      .white
                      .make()
                      .pSymmetric(h: 20),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "0 ".text.white.bold.make(),
                          "Post".text.white.bold.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0 ".text.white.bold.make(),
                          "Following".text.white.bold.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0 ".text.white.bold.make(),
                          "Follower".text.white.bold.make(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                "My Post ".text.xl3.bold.make(),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 25,
                        childAspectRatio: 0.9),
                    itemBuilder: (context, Index) {
                      return Column(
                        children: [
                          Image.asset("assets/images/board1.png")
                              .cornerRadius(10),
                          6.heightBox,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "netflix will change money for password sharing"
                                  .text
                                  .make()
                                  .expand(),
                              Icon(FeatherIcons.moreVertical),
                            ],
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
