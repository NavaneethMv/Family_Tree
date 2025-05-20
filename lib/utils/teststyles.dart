import 'package:family_tree/utils/colours.dart';
import 'package:flutter/material.dart';

TextStyle headingStyle({double fontSize = 30, color = primaryColor}) {
  return TextStyle(
    fontFamily: 'Outfit',
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

TextStyle subHeadingStyle(
    {double fontSize = 19, Color color = textLightGrayColor}) {
  return TextStyle(
    fontFamily: 'Outfit',
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: color,
  );
}
