import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagePage extends StatefulWidget {
  const imagePage({super.key});

  @override
  State<imagePage> createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text("App bar")],
        ),
        leading: Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Container(
                  width: 80,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffffbe00),
                        Color(0xffff9a00),
                      ],
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {
              _pickImageFromGallery();
            },
            child: const Text("Pick Image from Gallery "),
          ),
          ElevatedButton(
            onPressed: () {
              _pickImageFromCamera();
            },
            child: const Text("Pick Image from Cmera"),
          ),
          const SizedBox(
            height: 20,
          ),
          image != null
              ? Image.file(image!)
              : const Text("please selected an image")
        ],
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      image = File(returnedImage!.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      image = File(returnedImage!.path);
    });
  }
}
