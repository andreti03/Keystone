import 'dart:io';

import 'package:agro_app/Screens/Login/Client/Components/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../Sign_up/Store/Components/info_store.dart';
import '../Sign_up/Store/Components/info_store2.dart';

class PhotoV extends StatefulWidget {
  @override
  State<PhotoV> createState() => _PhotoVState();
}

class _PhotoVState extends State<PhotoV> {
  final imageSelector = ImagePicker();
  bool onTapEnabled = false;

  List<XFile?> imageArray = [];

  XFile? currentImage;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Text("Ya Casi terminas"),
            Text("Agregar Foto (Opcional)"),
            GestureDetector(
                onTap: () async {
                  XFile? image = await imageSelector.pickImage(
                      source: ImageSource.gallery);
                  setState(() {
                    if (image != null) {
                      imageArray.add(image);
                    } else {
                      Get.snackbar(
                          "There was a problem", "We couldn't get your photo",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    }

                    setState(() {
                      if (imageArray.length >= 2) {
                        onTapEnabled = true;
                      } else {
                        onTapEnabled = false;
                      }
                    });
                  });
                },
                child: index < imageArray.length
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.file(
                          File(imageArray[index]!.path),
                          fit: BoxFit.fitHeight,
                        ))
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffC4C4C4)),
                              color: const Color(0xffC4C4C4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                        ),
                      )

                //Image.file(File(imageArray[0]!.path))

                ),
            GestureDetector(
                onTap: () {
                  Get.to(InfoStore1());
                }, child: Container(child: Text("Registrarse"))),
          ],
        ),
      ),
    );
  }
}
