import 'package:agro_app/Screens/Sign_up/Store/Components/info_store2.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'background.dart';

class InfoStore1 extends StatelessWidget {
  const InfoStore1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Background(
        child: Expanded(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const Text(
                'Selecciona el tipo de producto',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () {
                  Get.to(InfoStore2());
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: const Center(
                      child: Text("Frutas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: const Center(
                      child: Text("Verduras",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: const Center(
                      child: Text("Huevo y Lacteos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    ));
  }
}
