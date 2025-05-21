import 'package:family_tree/views/Login/widgets/adminlogin.dart';
import 'package:family_tree/views/Login/widgets/loginheader.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/size.dart';
import 'package:family_tree/views/Login/widgets/memberlogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double width = constraints.maxWidth;
              double height = constraints.maxHeight;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: constraints.maxWidth * 0.2),
                    LoginHeader(width: width),
                    sizedBox_h30,
                    TabBar(
                      indicatorColor: primaryColor,
                      labelColor: primaryColor,
                      unselectedLabelColor: textLightColor,
                      tabs: [
                        Tab(
                          child: Text(
                            'Member Login',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Admin Login',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBox_h20,
                    SizedBox(
                      height: height * 0.5,
                      child: const TabBarView(
                        children: [
                          MemberLogin(),
                          Adminlogin(),
                        ],
                      ),
                    ),
                    sizedBox_h10
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
