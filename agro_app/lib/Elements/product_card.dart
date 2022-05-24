import 'dart:developer';

import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String pname, sname, img;
  final int price, peso;
  const ProductCard(
      {Key? key,
      required this.pname,
      required this.sname,
      required this.img,
      required this.peso,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    double data = size.height*0.019;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width*0.9,
        height: size.height*0.15,
        child: SafeArea(
          child: OutlinedButton(
            onPressed: () {
              log('$data');
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SizedBox(
                    width: size.width*0.33,
                    height: size.height*0.11,
                    child: Image.asset(img, 
                    fit: BoxFit.fill,
                    
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width*0.33,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pname,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16, 
                        ),
                      ),
                      SizedBox(height: size.height*0.02),
                      Text('\$$price cop $peso' 'Lb',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: kPrimaryLigthColor,
                          fontSize: 12, 
                        ),
                      ),
                      SizedBox(height: size.height*0.02),
                      Text('Vendedor:  $sname ',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: kPrimaryLigthColor,
                          fontSize: 12, 
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                onPressed: () {
                  log('Agregar $pname');
                }, 
                icon: const Icon(Icons.add), 
                color: kPrimaryColor,
                ),
              ],
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: kPrimaryDarkColor,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              primary: kPrimaryColor
            ),
          ),
        ),
      ),
    );
  }
}
