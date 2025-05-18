import 'package:family_tree/Utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../Utils/colours.dart';
import '../../../Utils/teststyles.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: darkWhite,
          appBar: AppBar(
            backgroundColor: darkWhite,
            title: Text(
              'Settings',
              style: headingStyle(),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                CupertinoIcons.back,
                size: 30,
                color: blackcolour,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
    
              children: [
              
          sizedBox_h30,
                settings_card(
                  iconbgclr: Colors.green[200]!,
                    buttonclr: Colors.green,
                    buttontext: 'Change',
                    constraints: constraints,
                    title: 'Password',
                    subtitle: 'Change your password',
                    icon: Icons.lock_outline,
                    iconcolor: whitecolour),
          
          
                    sizedBox_h20,
          
          
                    settings_card(
                      iconbgclr: Colors.red[100]!,
                    buttonclr: Colors.red,
                    buttontext: 'Logout',
                    constraints: constraints,
                    title: 'Logout',
                    subtitle: 'End your current session',
                    icon: Icons.logout,
                    iconcolor: Colors.red), 
              ],
            ),
          ),
        );
      },
    );
  }

  Container settings_card(
      {required BoxConstraints constraints,
      required String title,
      required String subtitle,
      required Color buttonclr,
      required String buttontext,
      required IconData icon,
      required Color iconcolor,
      required Color iconbgclr
      }) {
    return Container(
      height: constraints.maxWidth / 5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: whitecolour),
      child: Center(
        child: ListTile(
          title: Text(title),
          titleTextStyle: subHeadingStyle(color: blackcolour),
          subtitle: Text(subtitle),
          leading: CircleAvatar(
            backgroundColor: iconbgclr,
            radius: 30,
            child: Icon(icon,color: iconcolor,)
          ),
          trailing: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  color: buttonclr,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    buttontext,
                    style: const TextStyle(
                        color: whitecolour, fontWeight: FontWeight.bold),
                  ))),
        ),
      ),
    );
  }
}
