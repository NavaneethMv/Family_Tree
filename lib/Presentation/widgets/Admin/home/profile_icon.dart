import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return GestureDetector(
      onTap: 
      (){
        GoRouter.of(context).push('/settings');
      },
      child: CircleAvatar(
        radius: constraints.maxWidth * 0.059, // responsive radius
        backgroundColor: const Color.fromARGB(255, 214, 216, 220),
        child: Icon(
          Icons.person,
          size: constraints.maxWidth * 0.1, // responsive icon size
          color: primaryColor,
        ),
      ),
    );
  }
}
