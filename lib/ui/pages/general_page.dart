part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "subtitle",
      this.onBackButtonPressed,
      this.backColor,
      this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.white,
      ),
      SafeArea(
          child: Container(
        color: backColor ?? Colors.white,
      )),
      SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(children: [
                    onBackButtonPressed != null
                        ? GestureDetector(
                            onTap: () {
                              onBackButtonPressed!();
                            },
                            child: Container(
                                width: defaultMargin,
                                height: defaultMargin,
                                child: Icon(Icons.arrow_back_ios)),
                          )
                        : SizedBox(),
                    Column(
                      children: [
                        Text(title,
                            style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: "020202".toColor())),
                        Text(subtitle,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: greyColor)),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ]),
                ),
                Container(
                  height: defaultMargin,
                  width: double.infinity,
                  color: "FAFAFC".toColor(),
                ),
                child ?? SizedBox()
              ],
            )
          ],
        ),
      ),
    ]));
  }
}
