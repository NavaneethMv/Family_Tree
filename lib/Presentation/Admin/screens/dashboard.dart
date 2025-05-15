import 'package:family_tree/Presentation/Widgets/Admin/home/admin_dashboard_header.dart';
import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Admin/home/countcaed.dart';
import '../../Widgets/Global/icon_button.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
            child: SingleChildScrollView(
              child: Column(children: [
                Admin_Dashboard_Header(constraints: constraints),
                sizedBox_h30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountContainer(constraints, 'Total Members'),
                    CountContainer(constraints, 'Upcoming Events'),
                  ],
                ),
                sizedBox_h20,
                GlobalIconButton(
                  content: 'Add New Member',
                ),
                sizedBox_h20,
                RecentitemWidget(
                  title: 'Recent Members',
                  icon: Icons.person,
                  backgroundColor: primaryColor,
                ),
                sizedBox_h30,
                RecentitemWidget(
                  title: 'Recent Birthdays',
                  icon: Icons.cake,
                  backgroundColor: orange_accentColor,
                ),
              ]),
            ),
          ),
        ),
      );
    });
  }
}

class RecentitemWidget extends StatelessWidget {
  RecentitemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor
  });
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
                GoRouter.of(context).go('/memberlistscreen');
              },
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
          (index) => RecentMemberCard(icon: icon,backgroundColor: backgroundColor,),
        )
      ],
    );
  }
}

class RecentMemberCard extends StatelessWidget {
   RecentMemberCard({
    super.key,
   required this.icon ,
   required this.backgroundColor 
  });
  IconData icon;
  Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: whitecolour,
      child: ListTile(
        leading:  CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child: Icon(
           icon,
            color: whitecolour,
            size: 35,
          ),
        ),
        title: Text('John Doe',
            style: GoogleFonts.outfit(
                fontSize: 18, color: textColor, fontWeight: FontWeight.w500)),
        subtitle: Text('Kannur, Kerala',
            style: GoogleFonts.outfit(
                fontSize: 14, color: textColor, fontWeight: FontWeight.w400)),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.forward,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
