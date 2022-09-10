part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double ListItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'FoodMarket',
                            style: FormTitleStyle,
                          ),
                          Text(
                            'Let’s get some foods',
                            style: greyFontStyle,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://instagram.fdps2-1.fna.fbcdn.net/v/t51.2885-19/54277631_407830939773425_9049066003236913152_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdps2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=hgUfL1wuPlYAX8RCOVd&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_ojS7oTiohF68IfsWInFUFTj5mqxuN5brzT8NEgcURng&oe=6322851C&_nc_sid=8fd12b"))),
                    )
                  ]),
            ),
            //product card container
            Container(
                height: 258,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockFoods
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    left: (e == mockFoods.first)
                                        ? defaultMargin
                                        : 0,
                                    right: defaultMargin),
                                child: FoodCard(e),
                              ))
                          .toList(),
                    )
                  ],
                )),
            //product list container
            Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['New', 'Recomended', 'Editor pick'],
                      selectedIndex: selectedIndex,
                      onButtonTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    IndexedStack(
                      index: selectedIndex,
                      children: [
                        Column(
                          children: mockFoods
                              .map((e) => Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        defaultMargin, 10, defaultMargin, 10),
                                    child: FoodListItem(
                                        food: e, itemWidth: ListItemWidth),
                                  ))
                              .toList(),
                        ),
                        Text("Recomended"),
                        Text("editor pick")
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
}
