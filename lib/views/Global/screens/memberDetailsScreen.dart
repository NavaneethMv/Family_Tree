import 'package:family_tree/views/Global/widgets/Member%20details/curved_container_withImage_avathar.dart';
import 'package:family_tree/views/Global/widgets/Member%20details/personalDetailsContainer.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/constants.dart';
import 'package:family_tree/utils/teststyles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MemberDetailsScreen extends StatelessWidget {
  const MemberDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        floatingActionButton: (isadmin ?? false)
            ? FloatingActionButton(
                backgroundColor: primaryColor,
                onPressed: () {
                  GoRouter.of(context).push('/addmemberscreen');
                },
                child: const Icon(
                  Icons.edit,
                  color: whitecolour,
                ),
              )
            : null,
        backgroundColor: darkWhite,
        body: ListView(
          children: [
            CurvedContainerwithImageAvathar(constraints: constraints),
            const SizedBox(height: 65),
            Text(
              'Michael Johnson',
              textAlign: TextAlign.center,
              style: subHeadingStyle(color: blackcolour, fontSize: 23),
            ),
            const Personaldetailscontainer(),
          ],
        ),
      );
    });
  }
}
