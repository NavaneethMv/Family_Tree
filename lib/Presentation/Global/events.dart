import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          backgroundColor: whitecolour,
          appBar: AppBar(
            
            title: Text(
              'Recent Events',
              style: headingStyle(fontSize: constraints.maxWidth * .065,color: whitecolour),
            ),
            centerTitle: true,
            backgroundColor: primaryColor,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              sizedBox_h20,
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                  return  EventCard(constraints: constraints,eventDate: 'May 20, 2025',eventType: 'Birthday',personName: "Amal Roy",);
                }),
              ),
            ],
          ));
    });
  }
}

class EventCard extends StatelessWidget {
   EventCard({
    super.key,
    required this.constraints,
    required this.eventDate,
    required this.eventType,
    required this.personName,
  });
BoxConstraints constraints;
String eventDate ;
String eventType;
String personName ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8 ),
      child: Container(
        height: constraints.maxHeight * .18,
        width: constraints.maxWidth,
        decoration: BoxDecoration(
          color: whitecolour,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 5,
              offset:
                  const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                radius: constraints.maxWidth * .08,
                backgroundColor: blackcolour,
                child: const Icon(
                  Icons.event,
                  color: whitecolour,
                  size: 40,
                ),
              ),
            ),
            sizedBox_w20,
            Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventDate,
                  style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500, fontSize: 17 ,color:textLightGrayColor ),
                ),
                Text(
                  eventType,
                  style: subHeadingStyle(
                      fontSize: 18, color: primaryColor),
                ),
                Text(
                  personName,
                  style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
