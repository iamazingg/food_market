part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> titles;
  final int? selectedIndex;
  final Function(int)? onButtonTap;

  CustomTabBar({required this.titles, this.selectedIndex, this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 3,
            color: "F2F2F2".toColor(),
          ),
          Row(
            children: titles
                .map((e) => GestureDetector(
                      onTap: () {
                        if (onButtonTap != null) {
                          onButtonTap!(titles.indexOf(e));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: defaultMargin),
                        child: Column(children: [
                          Text(
                            e,
                            style: (titles.indexOf(e) == selectedIndex)
                                ? FormTitleStyle
                                : greyFontStyle,
                          ),
                          Container(
                            width: 40,
                            height: 2,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                          )
                        ]),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
