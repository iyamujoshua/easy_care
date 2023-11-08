import 'package:easy_care/utils/custom_colors.dart';
import 'package:easy_care/utils/long_button.dart';
import 'package:easy_care/utils/textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Sign Up",
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
                    "asset/user.svg",
                    width: 5,
                    height: 5,
                  ),
                  label: 'Enter your name',
                  suffixIcon: null,
                  obscureText: false,
                ),
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
                  children: <Widget>[
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: BrandColors.colorbackground,
                    ),
                    Text(
                      'I agree to the easycare Terms of Service \n and Privacy Policy',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
                if (_isChecked == true)
                  if (_isChecked == true)
                    CustomButtonWithBorder(
                      text: "Sign Up",
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
                                    "Success",
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
                                    "Your account has been successfully\n registered",
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
                                      Navigator.pushNamed(context, '/HomePage');
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
                                      fontSize:
                                          14, // Customize the font size here
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Text(
                        "Already have an account? ",
                      ),
                    ),
                    InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, '/Login');
                        }),
                        child: Text(
                          "Login",
                          style: TextStyle(color: BrandColors.colorbackground),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
