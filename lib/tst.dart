import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class tst extends StatefulWidget {
  const tst({super.key});

  @override
  State<tst> createState() => _tstState();
}

class _tstState extends State<tst> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(children: [
      GestureDetector(
        onTap: _pickImage,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.orange,
          ),
          child: _image != null
              ? CircleAvatar(
            radius: 65,
            backgroundImage: FileImage(_image!),
          )
              : Padding(
                padding: const EdgeInsets.all(40.0),
                child: Icon(
                            Icons.person_add_alt_1_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
              ),
        ),
      ),
    ],),);
  }
}
