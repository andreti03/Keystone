import 'dart:developer';
import 'package:agro_app/Elements/product_card.dart';
import 'package:agro_app/Elements/rounded_search.dart';
import 'package:agro_app/Elements/scroll_menu.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  
  final schController = TextEditingController();
  final categories = ['Todo','Frutas','Verduras','Huevos y lacteos'];
  final press = [
    (){log('Todo');}, 
    (){log('Frutas');},
    (){log('Verduras');},
    (){log('Huevos y Lacteos');}
    ];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    String sch = '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
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
        ScrollMenu( listaC: categories, listaP: press,),
        const ProductCard(pname: 'Papa Pastusa', sname: 'Julian Castro', peso: 1, price: 2600)
      ],
    );
  }
}

