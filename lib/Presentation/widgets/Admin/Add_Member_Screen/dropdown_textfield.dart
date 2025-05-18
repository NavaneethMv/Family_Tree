import 'package:family_tree/Utils/teststyles.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/colours.dart';

class DropdownTextFieldWidget extends StatefulWidget {
   DropdownTextFieldWidget({super.key,
    required this.options,
  });
List<String> options;
  @override
  State<DropdownTextFieldWidget> createState() => _DropdownTextFieldWidgetState();
}

class _DropdownTextFieldWidgetState extends State<DropdownTextFieldWidget> {

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: textfieldbg,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Lightindigo, width: 2),
      ),
      child: DropdownButtonFormField<String>(
        dropdownColor: textfieldbg,
        value: selectedOption,
        decoration:  InputDecoration(
          border: InputBorder.none,
          hintText: 'Select Relation',
          hintStyle: subHeadingStyle(fontSize: 10, color: textDarkColor),  
        ),
        icon: const Icon(Icons.arrow_drop_down,size: 30,),
        style:  const TextStyle(
            fontSize: 20,
            color: textDarkColor,
            fontWeight: FontWeight.w500,
          ),
        hint: const Text('Select Relation'),
        items: widget.options.map((String value) {
          return DropdownMenuItem<String>(
            
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedOption = newValue!;
          });
        },
      ),
    );
  }
}
