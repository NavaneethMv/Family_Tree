import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';

import '../../../Utils/teststyles.dart';
class Textfield_widget extends StatelessWidget {
  Textfield_widget({
    super.key,
    required this.isObscure,
    required this.hintText,
  });
  bool isObscure = true;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: textfieldbg,
        borderRadius: BorderRadius.circular(12),
        boxShadow: cardShadows,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: isObscure,
          style: const TextStyle(
            fontSize: 20,
            color: textDarkColor,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: subHeadingStyle(),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
