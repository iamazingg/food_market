part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;
    return GeneralPage(
      title: "Sign Up",
      subtitle: "Register and eat",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(children: [
        Container(
          width: 110,
          height: 110,
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/Ellipse 6.png'))),
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://instagram.fdps2-1.fna.fbcdn.net/v/t51.2885-19/54277631_407830939773425_9049066003236913152_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdps2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=kRg4cEuaA0gAX_5f7hS&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-vAxUOQN87TSAeMJkOPeR3n21ByDDWlGqJcIjKYSjroQ&oe=6312B31C&_nc_sid=8fd12b"),
                      fit: BoxFit.cover))),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 16),
          child: Text(
            "Full name",
            style: FormTitleStyle,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: fullNameController,
            decoration: InputDecoration(
                hintText: "Type your full name",
                hintStyle: greyFontStyle,
                border: InputBorder.none),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: "020202".toColor())),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 16),
          child: Text(
            "Email address",
            style: FormTitleStyle,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Type your email",
                hintStyle: greyFontStyle,
                border: InputBorder.none),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: "020202".toColor())),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 16),
          child: Text(
            "Password",
            style: FormTitleStyle,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
                hintText: "Type your password",
                hintStyle: greyFontStyle,
                border: InputBorder.none),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: "020202".toColor())),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 45,
          child: isLoading
              ? SpinKitFadingCircle(
                  size: 45,
                  color: mainColor,
                )
              : RaisedButton(
                  onPressed: () {
                    Get.to(AddressPage());
                  },
                  elevation: 0,
                  textColor: Colors.black,
                  color: mainColor,
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
        )
      ]),
    );
  }
}
