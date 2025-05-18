import 'dart:async';

import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FamilySplashScreen extends StatefulWidget {
  const FamilySplashScreen({super.key});

  @override
  State<FamilySplashScreen> createState() => _FamilySplashScreenState();
}

class _FamilySplashScreenState extends State<FamilySplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3), () {
      getdata(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor, // The SVG has its own bg gradient
    );
  }

  Future<void> getdata(BuildContext context) async {
    SharedPreferences sharedpref = await SharedPreferences.getInstance();
    bool? adminstatus = sharedpref.getBool('isadminlogedin');
    bool? memberstatus = sharedpref.getBool('ismemberlogedin');
    if (adminstatus == true) {
      GoRouter.of(context).pushReplacement('/adminbottomnavbar');
    } else if (memberstatus == true) {
      GoRouter.of(context).pushReplacement('/memberDashboard');
    } else {
      GoRouter.of(context).pushReplacement('/login');
    }
  }
}
