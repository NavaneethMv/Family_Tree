import 'package:family_tree/routes/app_routes.dart';
import 'package:family_tree/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Global/widgets/global_button.dart';
import '../../Global/widgets/textfieldwidget.dart';

class Adminlogin extends StatelessWidget {
  const Adminlogin({super.key});

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
              await sharedPreferences.setBool('ismemberlogedin', false);
              await sharedPreferences.setBool('isadminlogedin', true);

              Get.toNamed(AppRoutes.adminHome);
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
