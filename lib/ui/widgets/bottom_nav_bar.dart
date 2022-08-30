part of 'widgets.dart';

class BottomNavBar extends StatelessWidget {
  final int SelectedIndex;
  final Function(int Index)? onTap;
  BottomNavBar({this.SelectedIndex = 0, this.onTap});
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
                if (onTap != null) {
                  onTap!(0);
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
                if (onTap != null) {
                  onTap!(0);
                }
              },
              child: Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 83),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_order' +
                            ((SelectedIndex == 0) ? '.png' : '_normal.png')),
                        fit: BoxFit.contain)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap!(0);
                }
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_profile' +
                            ((SelectedIndex == 0) ? '.png' : '_normal.png')),
                        fit: BoxFit.contain)),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
