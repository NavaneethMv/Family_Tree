import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class HalfSizeButton extends StatelessWidget {
   HalfSizeButton({
    super.key,
    required this.constraints,
    required this.content,
    required this.gradientStart,
    required this.gradientEnd,
required this.textColor,
  });
BoxConstraints constraints;
String content;
Color gradientStart;
Color gradientEnd;
Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.4,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [gradientStart, gradientEnd],
        ),
      ),
      child: Center(
        child: Text(
          content,
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
