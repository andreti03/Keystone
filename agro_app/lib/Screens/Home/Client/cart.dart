import 'dart:developer';

import 'package:agro_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarritoDeCompras extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CarritoDeCompras({Key? key}) : super(key: key);

  final prodnames = [
    'Papa Pastusa',
    'Aguacate',
    'Huevos',
  ];
  final prodval = [
    "3000",
    "2000",
    "13500",
  ];
  final cant = [
    "7",
    "1",
    "3",
  ];
  final asimg = [
    'assets/Images/dilema-papa.jpg',
    'assets/Images/Aguacate.jpg',
    'assets/Images/Huevo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kWhiteColor,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      CupertinoIcons.back,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Center(
                        child: Text(
                          'Carrito de Compras',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 32, top: 16),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: kGrayColor),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Image.asset(
                                  asimg[index],
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text( prodnames[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2),
                                      // ignore: avoid_unnecessary_containers
                                      Container(
                                        child: Text(prodval[index]),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          log("Less");
                                        },
                                        child:
                                            const Icon(CupertinoIcons.minus_circle)),
                                    Text(cant[index]),
                                    GestureDetector(
                                        onTap: () {
                                          log("More");
                                        },
                                        child:
                                            const Icon(CupertinoIcons.add_circled)),
                                  ],
                                ),
                              ),
                            ]),
                      );
                    },
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    color: Color(0xff0A1A3B)),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Center(
                              child: Text(
                            "Total: \$63000",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: const Center(
                                  child: Text(
                                "Limpiar Carrito",
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold),
                              )),
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: kRedColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: const Center(
                            child: Text(
                          "Finalizar",
                          style: TextStyle(
                              color: kWhiteColor, fontWeight: FontWeight.bold),
                        )),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
