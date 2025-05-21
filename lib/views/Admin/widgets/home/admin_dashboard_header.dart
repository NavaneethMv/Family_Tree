import 'package:family_tree/views/Admin/widgets/home/profile_icon.dart';
import 'package:family_tree/utils/teststyles.dart';
import 'package:flutter/material.dart';

class Admin_Dashboard_Header extends StatelessWidget {
  const Admin_Dashboard_Header({
    super.key,
    required this.constraints,
    required this.role,
  });
  final BoxConstraints constraints;
  final String role;
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
              style: headingStyle(fontSize: constraints.maxWidth * .068),
            ),
            Text(
              '$role Dashboard',
              style: subHeadingStyle(fontSize: constraints.maxWidth * .05),
            ),
          ],
        ),
        ProfileIcon(constraints: constraints)
      ],
    );
  }
}
