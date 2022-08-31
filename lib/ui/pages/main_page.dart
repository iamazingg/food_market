part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: "E5E5E5".toColor(),
            ),
          ),
          SafeArea(
              child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  children: [
                Center(
                  child: FoodPage(),
                ),
                Center(
                  child: Text("order"),
                ),
                Center(
                  child: Text("account"),
                ),
              ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBar(
                SelectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ))
        ],
      ),
    ));
  }
}
