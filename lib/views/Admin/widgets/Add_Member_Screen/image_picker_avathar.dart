import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:family_tree/utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerAvatar extends StatefulWidget {
  const ImagePickerAvatar({super.key});

  @override
  State<ImagePickerAvatar> createState() => _ImagePickerAvatarState();
}

class _ImagePickerAvatarState extends State<ImagePickerAvatar> {
  File? _selectedImage;
  File? _image;
  Color borderColor = Colors.grey;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() => borderColor = primaryColor);
        await _pickImage();
      },
      child: DottedBorder(
        color: borderColor,
        strokeWidth: 2,
        dashPattern: [6, 3],
        borderType: BorderType.Circle,
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: const Color.fromARGB(255, 214, 216, 220),
          backgroundImage: _image != null ? FileImage(_image!) : null,
          child: _image == null
              ? const Icon(
                  Icons.add_photo_alternate_rounded,
                  size: 50,
                  color: Colors.grey,
                )
              : null,
        ),
      ),
    );
  }
}
