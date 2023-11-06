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
                      : const Icon(Icons.visibility, color: Color(0xFF292D32)),
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
                      Navigator.pushNamed(context, '/ForgetPassword');
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
                  Navigator.pushNamed(context, '/HomePage');
                },
                borderColor:
                    Colors.transparent, // Customize the border color here
                borderWidth: 1.0, // Customize the border width here
                buttonColor: BrandColors
                    .colorbackground, // Customize the background color here
                textStyle: TextStyle(
                  color: Colors.white, // Customize the text color here
                  fontSize: 14, // Customize the font size here
                  fontWeight: FontWeight.bold, // Customize the font weight here
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
                        Navigator.pushNamed(context, '/signup');
                      }),
                      child: Text(
                        "Sign up,",
                        style: TextStyle(color: BrandColors.colorbackground),
                      )),
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
            ],
          ),
        ),
      ),
    );
  }
}
