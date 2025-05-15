import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';

import '../../../Utils/teststyles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

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
          child: Text(
            'Login',
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
