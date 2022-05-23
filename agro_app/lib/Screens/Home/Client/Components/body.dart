import 'dart:developer';
import 'package:agro_app/Elements/rounded_search.dart';
import 'package:agro_app/Elements/scroll_menu.dart';
import 'package:agro_app/Elements/scroll_products.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  
  final schController = TextEditingController();
  final categories = ['Todo','Frutas','Verduras','Huevos y lacteos','Tuberculos'];
  final press = [
    (){log('Todo');}, 
    (){log('Frutas');},
    (){log('Verduras');},
    (){log('Huevos y Lacteos');},
    (){log('Tuberculos');}
    ];
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
    
    String sch = '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ScrollMenu( listaC: categories, listaP: press,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedSearch(
              textController: schController,
              hintText: 'Buscar',
              onChanged: (value) {
                  sch = value;
                }
              ),
            IconButton(
              onPressed: () {log(sch);},
              icon: Icon(
                Icons.search,
                color: kPrimaryColor,
                size: size.height * 0.04,),
              ),
          ],
        ),
        ScrollProducts(prodnames: prodnames, asimg: asimg)


      ],
    );
  }
}

