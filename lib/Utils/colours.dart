import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF4f46e5);
const Color secondaryColor = Color(0xFF6366f1);
const Color orange_accentColor = Color(0xFFf97316);
const Color backgroundColor = Color(0xFFf8fafc);
const Color surfaceColor = Color(0xFFFFFFFF);
const Color textColor = Color(0xFF1e293b);
const Color textLightColor = Color(0xFF64748b);
const Color textDarkColor = Color(0xFF111827);
const Color textLightGrayColor = Color(0xFF9ca3af);
const Color textDarkGrayColor = Color(0xFF374151);    

const Color gradientStart = Color(0xFF6366F1); // #6366f1
const Color gradientEnd = Color(0xFF4F46E5);   // #4f46e5

const List<BoxShadow> cardShadows = [
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.05),
    blurRadius: 4,
    offset: Offset(0, 2),
  ),
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    blurRadius: 6,
    offset: Offset(0, 4),
  ),
];

/// Button shadows
const List<BoxShadow> buttonShadows = [
  BoxShadow(
    color: Color.fromRGBO(99, 102, 241, 0.2),
    blurRadius: 4,
    offset: Offset(0, 2),
  ),
  BoxShadow(
    color: Color.fromRGBO(99, 102, 241, 0.3),
    blurRadius: 6,
    offset: Offset(0, 4),
  ),
];



// Container(
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       begin: Alignment.topLeft,
//       end: Alignment.bottomRight,
//       colors: [gradientStart, gradientEnd],
//     ),
//   ),
// )
// Card(
//   elevation: 0,
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   child: Container(
//     decoration: BoxDecoration(
//       color: Colors.white,
//       boxShadow: cardShadows,
//       borderRadius: BorderRadius.circular(12),
//     ),
//   ),
// )
