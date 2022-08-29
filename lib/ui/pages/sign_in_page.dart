part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;
    return GeneralPage(
      title: "Sign In",
      subtitle: 'Find your best ever meal',
      child: Column(children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 16),
          child: Text(
            'Email address',
            style: FormTitleStyle,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: "020202".toColor())),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: "Type your email address"),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 16),
          child: Text(
            'Password',
            style: FormTitleStyle,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: "020202".toColor())),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: "Type your password"),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: defaultMargin),
          height: 45,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: isLoading
              ? SpinKitFadingCircle(
                  size: 45,
                  color: mainColor,
                )
              : RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: defaultMargin),
          height: 45,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: RaisedButton(
            onPressed: () {
              Get.to(SignUpPage());
            },
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: greyColor,
            child: Text(
              "Create New Account",
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ]),
    );
  }
}
