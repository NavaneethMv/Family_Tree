import 'package:family_tree/views/Admin/widgets/home/admin_dashboard_header.dart';
import 'package:family_tree/views/Admin/widgets/home/countcard.dart';
import 'package:family_tree/views/Admin/widgets/home/recent_member_widget.dart';
import 'package:family_tree/views/Global/widgets/icon_button.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                Admin_Dashboard_Header(
                  constraints: constraints,
                  role: 'Admin',
                ),
                sizedBox_h30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountContainer(constraints, 'Total Members'),
                    CountContainer(constraints, 'Upcoming Events'),
                  ],
                ),
                sizedBox_h20,
                GestureDetector(
                  onTap: () => GoRouter.of(context).push('/addmemberscreen'),
                  child: GlobalIconButton(
                    content: 'Add New Member',
                  ),
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
