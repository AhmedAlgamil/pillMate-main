import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon});
  final String prefixIcon;
  String? suffixIcon;
  final String hintText;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 328,
      color: const Color(0xFFF5F5F5),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(prefixIcon),
            ),
          ),
          suffixIcon: (suffixIcon == null) ? null : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(suffixIcon!),
            ),
          ),
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
