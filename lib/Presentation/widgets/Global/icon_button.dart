import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';

import '../../../Utils/teststyles.dart';

class GlobalIconButton extends StatelessWidget {
   GlobalIconButton({
    super.key,
    required this.content,
  });
String content ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gradientStart, gradientEnd],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add,
                  color: whitecolour, size: 35),
                  sizedBox_w10,
              Text(
                content,
                style: subHeadingStyle(
                  fontSize: 23,
                  color: whitecolour,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
