part of 'widgets.dart';

class BottomNavBar extends StatelessWidget {
  final int SelectedIndex;
  final Function(int Index)? onTapButton;
  BottomNavBar({this.SelectedIndex = 0, this.onTapButton});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                if (onTapButton != null) {
                  onTapButton!(0);
                }
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_home' +
                            ((SelectedIndex == 0) ? '.png' : '_normal.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (onTapButton != null) {
                  onTapButton!(1);
                }
              },
              child: Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 83),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_order' +
                            ((SelectedIndex == 1) ? '.png' : '_normal.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (onTapButton != null) {
                  onTapButton!(2);
                }
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_profile' +
                            ((SelectedIndex == 2) ? '.png' : '_normal.png')),
                        fit: BoxFit.contain)),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
