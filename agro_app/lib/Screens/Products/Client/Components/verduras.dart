import 'dart:developer';
import 'package:agro_app/Elements/rounded_search.dart';
import 'package:agro_app/Elements/scroll_products.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Verduras extends StatelessWidget {
  Verduras({Key? key}) : super(key: key);
  
  final schController = TextEditingController();
  
  final prodnames = ['Aguacate','Tomates'];
  
  final asimg = [
    'assets/Images/Aguacate.jpg',
    'assets/Images/tomate.jpeg',
    ];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    String sch = '';

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: size.height * 0.02),
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
                  size: size.height * 0.04),
                ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ScrollProducts(prodnames: prodnames, asimg: asimg)
    
        ],
      ),
    );
  }
}

