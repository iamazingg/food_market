part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: Row(children: []),
              ),
            ],
          )),
          Align(alignment: Alignment.bottomCenter, child: BottomNavBar())
        ],
      ),
    ));
  }
}
