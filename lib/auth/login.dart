import 'package:easy_care/utils/custom_colors.dart';
import 'package:easy_care/utils/long_button.dart';
import 'package:easy_care/utils/textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final ButtonStyle style = ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color.fromARGB(111, 158, 158, 158)),
        borderRadius: BorderRadius.circular(50)),
  );
  bool _isChecked = false;
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  // color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "asset/left.svg",
                  width: 5,
                  height: 5,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField1(
                  hintText: '',
                  prefixIcon: SvgPicture.asset(
                    "asset/Email.svg",
                    width: 5,
                    height: 5,
                  ),
                  label: 'example@email.com',
                  suffixIcon: null,
                  obscureText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField1(
                  hintText: '',
                  prefixIcon: SvgPicture.asset(
                    "asset/Password.svg",
                    width: 5,
                    height: 5,
                  ),
                  label: 'Enter password',
                  suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ? const Icon(Icons.visibility_off,
                            color: Color(0xFF292D32))
                        : const Icon(Icons.visibility,
                            color: Color(0xFF292D32)),
                    onPressed: () =>
                        setState(() => isPasswordVisible = !isPasswordVisible),
                  ),
                  obscureText: isPasswordVisible,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // '/ForgetPassword'
                        Navigator.pushNamed(context, '/ForgotPassword');
                      },
                      child: Center(
                          child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: BrandColors.colorbackground,
                        ),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonWithBorder(
                  text: "Login",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "asset/Done.svg",
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Yeay! Welcome Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Once again you login successfully\ninto firstcare app",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              CustomButtonWithBorder(
                                text: "Go to home",
                                onPressed: () {
                                  Navigator.pushNamed(context, '/HomeScreen');
                                },
                                borderColor: Colors
                                    .transparent, // Customize the border color here
                                borderWidth:
                                    1.0, // Customize the border width here
                                buttonColor: BrandColors
                                    .colorbackground, // Customize the background color here
                                textStyle: TextStyle(
                                  color: Colors
                                      .white, // Customize the text color here
                                  fontSize: 14, // Customize the font size here
                                  fontWeight: FontWeight
                                      .bold, // Customize the font weight here
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  borderColor:
                      Colors.transparent, // Customize the border color here
                  borderWidth: 1.0, // Customize the border width here
                  buttonColor: BrandColors
                      .colorbackground, // Customize the background color here
                  textStyle: TextStyle(
                    color: Colors.white, // Customize the text color here
                    fontSize: 14, // Customize the font size here
                    fontWeight:
                        FontWeight.bold, // Customize the font weight here
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Text(
                        "Don't have an account? ",
                      ),
                    ),
                    InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, '/SignUp');
                        }),
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: BrandColors.colorbackground),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("OR"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "asset/Google.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 8),
                          Text('Sign in with Google',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                          Text("         "),
                          Text("")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "asset/Facebook.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 8),
                          Text('Sign in with Google',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                          Text("         "),
                          Text("")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "asset/Apple.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 8),
                          Text('Sign in with Google',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                          Text("         "),
                          Text("")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
