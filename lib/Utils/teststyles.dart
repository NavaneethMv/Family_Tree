import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headingStyle({double fontSize = 30}) {
  return GoogleFonts.outfit(
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
}

TextStyle subHeadingStyle({double fontSize = 20,Color color=textLightGrayColor}) {
  return GoogleFonts.outfit(
    fontSize: fontSize,
    fontWeight: FontWeight.w500,
    color:color ,
  );
}