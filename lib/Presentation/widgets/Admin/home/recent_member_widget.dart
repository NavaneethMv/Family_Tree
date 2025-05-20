import 'package:family_tree/Presentation/Admin/admin_main_home.dart';
import 'package:family_tree/Presentation/Member/member_main_home.dart';
import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/constants.dart';

class RecentitemWidget extends StatelessWidget {
  RecentitemWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.backgroundColor});
  String title;
  IconData icon;
  Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: subHeadingStyle(
                  fontSize: 20,
                  color: textColor,
                )),
            GestureDetector(
              onTap: () {
                if (title == 'Recent Events' && isadmin == true) {
                 AdminMainHome.selectedIndexNotifier.value = 3;
                } else if (title == 'Recent Members' && isadmin == true) {
                  AdminMainHome.selectedIndexNotifier.value = 2;
                  
                } else if (title == 'Recent Members' && ismember == true) {
                  MemberMainHome.selectedmemberIndexNotifier.value = 2;
                } else if (title == 'Recent Events' && ismember == true) {
                  MemberMainHome.selectedmemberIndexNotifier.value = 3;
                }},
             
              child: Text('See All',
                  style: GoogleFonts.outfit(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w500)),
            ),
          ],
        ),
        sizedBox_h30,
        ...List.generate(
          3,
          (index) => RecentMemberCard(
            icon: icon,
            backgroundColor: backgroundColor,
          ),
        )
      ],
    );
  }
}

class RecentMemberCard extends StatelessWidget {
  RecentMemberCard(
      {super.key, required this.icon, required this.backgroundColor});
  IconData icon;
  Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/memberdetailsscreen');
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: membercardcolour,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: backgroundColor,
                child: Icon(
                  icon,
                  color: whitecolour,
                  size: 35,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe',
                        style: GoogleFonts.outfit(
                            fontSize: 18,
                            color: textColor,
                            fontWeight: FontWeight.w500)),
                    Text('Kannur, Kerala',
                        style: GoogleFonts.outfit(
                            fontSize: 14,
                            color: textColor,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.forward,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
