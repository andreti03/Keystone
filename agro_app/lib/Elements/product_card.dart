import 'dart:developer';

import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String pname, sname;
  final int price, peso;
  const ProductCard(
      {Key? key,
      required this.pname,
      required this.sname,
      required this.peso,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    double data = size.height*0.0147;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width*0.9,
        height: size.height*0.15,
        child: OutlinedButton(
          onPressed: () {
            log('$data');
          },
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width*0.4,
                  height: size.height*0.13,
                  child: Image.asset('assets/Images/dilema-papa.jpg', 
                  fit: BoxFit.fill,
                  
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pname,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: size.height*0.0195, 
                    ),
                  ),
                  SizedBox(height: size.height*0.02),
                  Text('\$$price cop $peso' 'Lb',
                    style: TextStyle(
                      color: kPrimaryLigthColor,
                      fontSize: size.height*0.0195, 
                    ),
                  ),
                  SizedBox(height: size.height*0.02),
                  Text('Vendedor:  $sname ',
                    style: TextStyle(
                      color: kPrimaryLigthColor,
                      fontSize: size.height*0.0147, 
                    ),
                  ),
                ],
              ),
            ],
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: kPrimaryDarkColor,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
        ),
      ),
    );
  }
}
