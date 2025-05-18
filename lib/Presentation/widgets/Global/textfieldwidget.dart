import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';

import '../../../Utils/teststyles.dart';
class Textfield_widget extends StatelessWidget {
  Textfield_widget({
    super.key,
     this.isObscure=false,
    required this.hintText,
    this.height=65.0,
  });
  bool ?isObscure = true;
  final String? hintText;
  double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: textfieldbg,
        borderRadius: BorderRadius.circular( 15),
        border: Border.all(
          color: Lightindigo,
          width:2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
         
          maxLines: null,
          obscureText: isObscure ?? true,
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
