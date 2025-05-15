import 'package:family_tree/Presentation/widgets/Login/textfieldwidget.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';

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
          
        ],
      ),
    );
  }
}