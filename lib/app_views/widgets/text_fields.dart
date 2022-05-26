import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.prefixIcon,
    required this.hintTxt,
    required this.fieldFillColor,
    required this.obsecureVal,
    this.suffixIcon,
    required this.onChanged,
});
  String hintTxt;
  final Color fieldFillColor;
  final IconData prefixIcon;
  bool obsecureVal;
  final IconData? suffixIcon;
  final Function(String? val) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obsecureVal,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
        fillColor: fieldFillColor,
        filled: true,
        border: InputBorder.none,
        hintText: hintTxt,
        contentPadding: EdgeInsets.symmetric(vertical: 20),
      ),

    );
  }
}

