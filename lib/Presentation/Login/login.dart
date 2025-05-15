import 'package:family_tree/Presentation/widgets/Login/adminlogin.dart';
import 'package:family_tree/Presentation/widgets/Login/loginheader.dart';
import 'package:family_tree/Presentation/widgets/Login/memberlogin.dart';
import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/Login/loginbutton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      double height = constraints.maxHeight;

      return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(height: constraints.maxWidth*0.2,),  
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
                    height: height * 0.25, // adjust as needed
                    child: const TabBarView(
                      children: [
                        MemberLogin(),
                        Adminlogin(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    
                    onTap: () {
                      
                    },
                    child: const LoginButton()),
                  sizedBox_h10
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

