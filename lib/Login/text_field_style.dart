import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldStyle extends StatelessWidget {
  String hintText;

  TextFieldStyle({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffc7c7c7ff), width: 1)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC7C7C7FF), width: 1)),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFC7C7C7FF),
          fontSize: 18,
        ),
      ),
    );
  }
}
