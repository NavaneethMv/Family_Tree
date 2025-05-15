import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
         double width = constraints.maxWidth;
          double height = constraints.maxHeight;
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: constraints.maxWidth * 0.15,
                  backgroundColor: primaryColor,
                  child:  Icon(
                    Icons.groups,
                    size: constraints.maxWidth * 0.2,
                    color: Colors.white,
                  ),
                ),
                sizedBox_h10,
                Text('Family Directory',style:headingStyle(fontSize:width*.094 ),),
                sizedBox_h5,
                Text('Connect with your family members',style:subHeadingStyle(fontSize:width*.05 ),)
              ], 
            )
          ),
        );
      },
    );
    (
      backgroundColor: primaryColor,
    );
  }
}