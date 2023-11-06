import 'package:easy_care/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class TextFormField1 extends StatelessWidget {
  String hintText;
  String label;
  var onChanged;
  var prefixIcon;
  var suffixIcon;
  bool obscureText;
  TextFormField1({
    required this.obscureText,
    required this.label,
    required this.hintText,
    this.onChanged,
    required this.prefixIcon,
    required this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        cursorColor: BrandColors.colorbackground,
        onChanged: this.onChanged,
        onSaved: ((value) {}),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Text(label),
          hintText: hintText,
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.04),
              borderSide: BorderSide(color: Colors.transparent)),
          hintStyle: TextStyle(fontSize: 17),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                width: 1.5, color: BrandColors.colorbackground),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          fillColor: Color(0xFFFF4F4F4),
          filled: true,
          suffixIcon:
              Padding(padding: const EdgeInsets.all(12.0), child: suffixIcon),
          prefixIcon:
              Padding(padding: const EdgeInsets.all(12.0), child: prefixIcon
                  // SvgPicture.asset(
                  //   "asset/formicons.svg",
                  //   width: 5,
                  //   height: 5,
                  // ),
                  ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
