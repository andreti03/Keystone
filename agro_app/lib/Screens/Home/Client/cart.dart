
import 'package:agro_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarritoDeCompras extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CarritoDeCompras({Key? key}) : super(key: key);

  final prodnames = ['Papa Pastusa','Aguacate','Huevos','Huevos','Huevos','Huevos'];
  final asimg = [
    'assets/Images/dilema-papa.jpg',
    'assets/Images/Aguacate.jpg',
    'assets/Images/Huevo.jpg',
    'assets/Images/Huevo.jpg',
    'assets/Images/Huevo.jpg',
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
            children:  <Widget>[
              SizedBox(height: size.height*0.05,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(CupertinoIcons.back, color: kPrimaryColor, size: 30,),
                      
                    ),
                    const Text(
                      'Carrito de Compras',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(flex: 2, child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: ListView.builder(
                  itemCount: 50,

                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.grey
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  const Icon(CupertinoIcons.photo),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("Product Name"),
                                      // ignore: avoid_unnecessary_containers
                                      Container(
                                        child: const Text("\$Price"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(CupertinoIcons.minus_circle),
                                      Text("1"),
                                      Icon(CupertinoIcons.add_circled),
                                    ],
                                  ),
                                ]),
                    );
                  },
                ),
              ),),
              Container(
                decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.deepPurple
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: const Center(child: Text("CheckOut", style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),)),
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.red
                              ),
                            ),
                          ),
                          
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: const Center(child: Text("CheckOut", style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),)),
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.red
                              ),
                            ),
                          ),

                          
                        ),
                        
                      ],
                    ),
                    GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: const Center(child: Text("CheckOut", style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),)),
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.red
                              ),
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
