import 'package:family_tree/views/Admin/widgets/home/recent_member_widget.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/teststyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberListscreen extends StatelessWidget {
  const MemberListscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: whitecolour,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: whitecolour,
                automaticallyImplyLeading: false,
                pinned: false,
                floating: true,
                snap: true,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Family Members',
                  style: headingStyle(fontSize: constraints.maxWidth * .065),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(70),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10),
                    child: SearchBar(
                      backgroundColor:
                          const WidgetStatePropertyAll(membercardcolour),
                      leading: const Icon(CupertinoIcons.search),
                      hintText: 'Search family members',
                      keyboardType: TextInputType.text,
                      hintStyle: WidgetStatePropertyAll(
                        subHeadingStyle(fontSize: 16),
                      ),
                      onSubmitted: (String value) {
                        // search logic
                      },
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 20,
                    (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: RecentMemberCard(
                          icon: Icons.person,
                          backgroundColor: primaryColor,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
