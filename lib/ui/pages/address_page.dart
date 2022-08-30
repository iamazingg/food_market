part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNoController = TextEditingController();
    TextEditingController cityController = TextEditingController();
    bool isLoading = false;
    return GeneralPage(
      title: "Address",
      subtitle: "Make sure it’s valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
            child: Text(
              "Phone No.",
              style: FormTitleStyle,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: "020202".toColor()),
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: "Type your phone number",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Address",
              style: FormTitleStyle,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: "020202".toColor()),
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  hintText: "Type your address",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "House No.",
              style: FormTitleStyle,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: "020202".toColor()),
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              controller: houseNoController,
              decoration: InputDecoration(
                  hintText: "Type your house number",
                  hintStyle: greyFontStyle,
                  border: InputBorder.none),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "City",
              style: FormTitleStyle,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: "020202".toColor()),
                borderRadius: BorderRadius.circular(8)),
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              items: [
                DropdownMenuItem(
                    value: "bandung",
                    child: Text(
                      "Bandung",
                      style: greyFontStyle,
                    )),
                DropdownMenuItem(
                    value: "bandung",
                    child: Text(
                      "Jakarta",
                      style: greyFontStyle,
                    )),
                DropdownMenuItem(
                    value: "bandung",
                    child: Text(
                      "Bali",
                      style: greyFontStyle,
                    ))
              ],
              onChanged: (item) {},
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 45,
              child: isLoading
                  ? SpinKitFadingCircle(color: mainColor, size: 45)
                  : RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: mainColor,
                      child: Text(
                        'Sign Up Now',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ))
        ],
      ),
    );
  }
}
