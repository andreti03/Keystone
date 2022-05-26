import 'package:agro_app/Screens/Sign_up/Store/Components/info_store2.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'background.dart';

class InfoStore1 extends StatelessWidget {
  InfoStore1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        child: Expanded(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Text(
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
                  decoration: BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                      child: Text("Frutas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                      child: Text("Verduras",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: double.infinity,
                  child: Center(
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
