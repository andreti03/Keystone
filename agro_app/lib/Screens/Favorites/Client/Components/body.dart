import 'package:agro_app/Elements/scroll_favorites.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Body({Key? key}) : super(key: key);

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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children:  <Widget>[
          SizedBox(height: size.height*0.05,),
          const Center(
            child: Text(
              'Tus favoritos',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: size.height*0.05,),
          ScrollFavorites(prodnames: prodnames, asimg: asimg)
        ],
      ),
    );
  }
}
