import 'package:family_tree/Utils/size.dart';
import 'package:flutter/cupertino.dart';

import '../../../../Utils/colours.dart';
import '../../../../Utils/teststyles.dart';

class Personaldetailscontainer extends StatelessWidget {
  const Personaldetailscontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0,right: 28,left: 28,bottom: 28),
      child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whitecolour,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Personal Information',
                            style:
                                headingStyle(color: primaryColor, fontSize: 22),
                          ),
                        ),
                        sizedBox_h10,
                        detailsHeadingandValue('Full Name :', 'Michael Johnson'),
                        sizedBox_h10,
                        detailsHeadingandValue('Age :', '21'),
                        sizedBox_w10,
                        detailsHeadingandValue('Date of Birth :', '29/10/2003'),
                        sizedBox_h10,
                        detailsHeadingandValue('Phone number :', '1234567890'),
                        sizedBox_h10,
                        detailsHeadingandValue('Occupation :', 'Software Engineer'),
                        sizedBox_h10,
                        detailsHeadingandValue('Work Location :', 'New York, USA'),
                        sizedBox_h10,
                        detailsHeadingandValue('Relationship :', 'Son'),
                        sizedBox_h10,
                        detailsHeadingandValue('Related to :', 'Sam'),
                        sizedBox_h10,
                        detailsHeadingandValue('Address :',
                            'Akshya Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016'),
                        sizedBox_h20,
                      ],
                    ),
                  ),
                ),
    );
  }
}

  Widget detailsHeadingandValue(String heading, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading, style: subHeadingStyle(fontSize: 18),textAlign: TextAlign.center,),
        sizedBox_h5,
        Text(value, style: subHeadingStyle(color: blackcolour,fontSize: 20),textAlign: TextAlign.start,),
      ],
    );
  }
