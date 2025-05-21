import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      onTap: () async {
        SharedPreferences sharedpref = await SharedPreferences.getInstance();
        isadmin = sharedpref.getBool('isadminlogedin');
        ismember = sharedpref.getBool('ismemberlogedin');
        print('Admin Status===> $isadmin');
        print('Member Status===> $ismember');
        if (isadmin == true) {
          GoRouter.of(context).push('/settings');
        } else {
          GoRouter.of(context).push('/membersettings');
        }
      },
      child: CircleAvatar(
        radius: constraints.maxWidth * 0.059,
        backgroundColor: const Color.fromARGB(255, 214, 216, 220),
        child: Icon(
          Icons.person,
          size: constraints.maxWidth * 0.1,
          color: primaryColor,
        ),
      ),
    );
  }
}
