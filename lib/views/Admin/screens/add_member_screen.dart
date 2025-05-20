import 'package:family_tree/views/Admin/widgets/Add_Member_Screen/bottomnavbar.dart';
import 'package:family_tree/views/Admin/widgets/Add_Member_Screen/dropdown_textfield.dart';
import 'package:family_tree/views/Admin/widgets/Add_Member_Screen/image_picker_avathar.dart';
import 'package:family_tree/views/Global/widgets/textfieldwidget.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:family_tree/utils/lists.dart';
import 'package:family_tree/utils/size.dart';
import 'package:family_tree/utils/teststyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: whitecolour,
          title: Text('Add Member',
              style: GoogleFonts.outfit(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: textColor,
              )),
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: textColor,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        bottomNavigationBar: AddMemberBottomNavBar(constraints: constraints),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: ImagePickerAvatar()),
                  sizedBox_h10,
                  addMemberTextfieldWidget('Full Name', 'Enter full name'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: addMemberTextfieldWidget('Age', 'Age'),
                      ),
                      sizedBox_w10,
                      Expanded(
                        child: addMemberTextfieldWidget(
                            'Date of Birth', 'DD/MM/YYYY'),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      '**Below 2 fields are optional**',
                      style: subHeadingStyle(color: primaryColor, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  sizedBox_h5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: addMemberTextfieldWidget(
                            'Date of Marriage', 'DD/MM/YYYY'),
                      ),
                      sizedBox_w10,
                      Expanded(
                        child: addMemberTextfieldWidget(
                            'Date of Death', 'DD/MM/YYYY'),
                      ),
                    ],
                  ),
                  addMemberTextfieldWidget('Occupation', 'Enter occupation'),
                  addMemberTextfieldWidget('Work Location', 'City, Country'),
                  addMemberTextfieldWidget('Address', 'Enter Address',
                      height: 120),
                  addMemberTextfieldWidget(
                      'Phone Number', 'Enter phone number'),
                  Text(
                    'Relationship',
                    style: subHeadingStyle(color: textColor, fontSize: 18),
                  ),
                  sizedBox_h5,
                  DropdownTextFieldWidget(
                    options: relationship_option,
                  ),
                  sizedBox_h20,
                  Text(
                    'Related To',
                    style: subHeadingStyle(color: textColor, fontSize: 18),
                  ),
                  sizedBox_h5,
                  DropdownTextFieldWidget(
                    options: relationship_option,
                  ),
                  sizedBox_h20,
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  Column addMemberTextfieldWidget(String title, String hintText,
      {double height = 60}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: subHeadingStyle(color: textColor, fontSize: 18),
        ),
        sizedBox_h5,
        Textfield_widget(height: height, hintText: hintText),
        sizedBox_h20,
      ],
    );
  }
}
