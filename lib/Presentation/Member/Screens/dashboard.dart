import 'package:family_tree/Presentation/Widgets/Admin/home/admin_dashboard_header.dart';
import 'package:family_tree/Presentation/Widgets/Admin/home/recent_member_widget.dart';
import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Admin/home/countcard.dart';

class MemberDashboard extends StatelessWidget {
  const MemberDashboard({super.key});

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
                Admin_Dashboard_Header(constraints: constraints,role: "Member",),
                sizedBox_h30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountContainer(constraints, 'Total Members'),
                    CountContainer(constraints, 'Upcoming Events'),
                  ],
                ),
                
                
                sizedBox_h20,
                RecentitemWidget(
                  title: 'Recent Members',
                  icon: Icons.person,
                  backgroundColor: primaryColor,
                ),
                sizedBox_h30,
                RecentitemWidget(
                  title: 'Recent Events',
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

