import 'package:family_tree/routes/app_routes.dart';
import 'package:family_tree/views/Global/widgets/textfieldwidget.dart';
import 'package:family_tree/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Global/widgets/global_button.dart';

class MemberLogin extends StatelessWidget {
  const MemberLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Textfield_widget(
            isObscure: false,
            hintText: 'Username',
          ),
          sizedBox_h20,
          Textfield_widget(
            isObscure: true,
            hintText: 'Password',
          ),
          sizedBox_h20,
          GestureDetector(
            onTap: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              await sharedPreferences.setBool('isadminlogedin', false);
              await sharedPreferences.setBool('ismemberlogedin', true);
              Get.toNamed(AppRoutes.memberHome);
            },
            child: GlobalButton(
              content: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
