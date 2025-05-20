import 'package:family_tree/utils/colours.dart';
import 'package:flutter/material.dart';

import '../../../utils/teststyles.dart';

class GlobalButton extends StatelessWidget {
  GlobalButton({
    super.key,
    required this.content,
    this.width,
  });
  String content;
  double? width = double.infinity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gradientStart, gradientEnd],
          ),
        ),
        child: Center(
          child: Text(
            content,
            style: subHeadingStyle(
              fontSize: 23,
              color: whitecolour,
            ),
          ),
        ),
      ),
    );
  }
}
