import 'package:flutter/material.dart';
import 'package:family_tree/views/Global/widgets/halfsizebuttoon.dart';
import '../../../../utils/colours.dart';

class AddMemberBottomNavBar extends StatelessWidget {
  AddMemberBottomNavBar({
    super.key,
    required this.constraints,
  });
  BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: HalfSizeButton(
              content: 'Cancel',
              constraints: constraints,
              gradientStart: offwhite,
              gradientEnd: offwhite,
              textColor: blackcolour,
            ),
          ),
          GestureDetector(
            onTap: () {
              //saved popup
              //store to db function
              Navigator.pop(context);
            },
            child: HalfSizeButton(
              content: 'Save Member',
              constraints: constraints,
              gradientStart: gradientStart,
              gradientEnd: gradientEnd,
              textColor: whitecolour,
            ),
          ),
        ],
      ),
    );
  }
}
