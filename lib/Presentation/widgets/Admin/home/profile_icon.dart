import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  ProfileIcon({
    super.key,
    required this.constraints,
  });
  BoxConstraints constraints;
  @override
  Widget build(
    BuildContext context,
  ) {
    return CircleAvatar(
      radius: constraints.maxWidth * 0.059, // responsive radius
      backgroundColor: const Color.fromARGB(255, 214, 216, 220),
      child: Icon(
        Icons.person_2_outlined,
        size: constraints.maxWidth * 0.1, // responsive icon size
        color: primaryColor,
      ),
    );
  }
}
