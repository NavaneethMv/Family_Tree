import 'package:family_tree/Utils/colours.dart';
import 'package:flutter/cupertino.dart';

class Searchbar extends StatelessWidget {
   Searchbar({super.key});

     final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: primaryColor,
    
    );
  
  }
}