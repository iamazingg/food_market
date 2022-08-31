part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          color: Colors.white,
          height: 100,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                          "https://instagram.fdps2-1.fna.fbcdn.net/v/t51.2885-19/54277631_407830939773425_9049066003236913152_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdps2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=kRg4cEuaA0gAX_5f7hS&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-vAxUOQN87TSAeMJkOPeR3n21ByDDWlGqJcIjKYSjroQ&oe=6312B31C&_nc_sid=8fd12b"))),
            )
          ]),
        ),
        //product card container

        //product list container
      ],
    );
  }
}
