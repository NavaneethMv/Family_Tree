import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';

import '../../../Utils/teststyles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: width * 0.15,
          backgroundColor: primaryColor,
          child: Icon(
            Icons.groups,
            size: width * 0.2,
            color: Colors.white,
          ),
        ),
        sizedBox_h10,
        Text(
          'Family Directory',
          style: headingStyle(fontSize: width * .094),
        ),
        sizedBox_h5,
        Text(
          'Connect with your family members',
          style: subHeadingStyle(fontSize: width * .05),
        ),
      ],
    );
  }
}
