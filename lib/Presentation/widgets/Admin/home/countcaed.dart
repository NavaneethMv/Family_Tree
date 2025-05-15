import 'package:flutter/material.dart';

import '../../../../Utils/colours.dart';
import '../../../../Utils/teststyles.dart';
Container CountContainer(BoxConstraints constraints,String title) {
    return Container(
      height: constraints.maxWidth * 0.27,
      width: (constraints.maxWidth - 30 - 10) / 2, // 10 is the spacing between
      decoration: BoxDecoration(
        color: Lightindigo,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 10  ,top: 15),
        child: Column(
          children: [
            Text(
              title,
              style: subHeadingStyle(color: textLightColor),
            ),
            Text(
              '34',
              style: subHeadingStyle(color: primaryColor, fontSize: 40), 
            ),
          ],
        ),
      ),
    );
  }

