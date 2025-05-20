import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/size.dart';
import 'package:family_tree/utils/teststyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvedContainerwithImageAvathar extends StatelessWidget {
  const CurvedContainerwithImageAvathar({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: constraints.maxHeight * 0.2,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const CircleAvatar(
                  backgroundColor: Color.fromARGB(92, 233, 233, 233),
                  child: Icon(
                    CupertinoIcons.back,
                    color: whitecolour,
                    size: 30,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Family Member',
                    style: subHeadingStyle(
                      color: whitecolour,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ),
        sizedBox_h10,
        const Positioned(
          bottom: -65,
          left: 0,
          right: 0,
          child: Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: offwhite,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: whitecolour,
                child: Icon(
                  CupertinoIcons.person,
                  color: primaryColor,
                  size: 80,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
