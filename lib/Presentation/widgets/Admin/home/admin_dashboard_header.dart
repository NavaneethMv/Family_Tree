import 'package:family_tree/Presentation/Widgets/Admin/home/profile_icon.dart';
import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/material.dart';
class Admin_Dashboard_Header extends StatelessWidget {
  const Admin_Dashboard_Header({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Family Directory',
              textAlign: TextAlign.left,
              style: headingStyle(
                  fontSize: constraints.maxWidth * .068),
            ),
            Text(
              'Admin Dashboard',
              style: subHeadingStyle(
                  fontSize: constraints.maxWidth * .05),
            ),
          ],
        ),
        ProfileIcon(constraints: constraints)
      ],
    );
  }
}