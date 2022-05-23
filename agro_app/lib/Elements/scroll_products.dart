import 'package:agro_app/Elements/product_card.dart';

// ignore: unused_import
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ScrollProducts extends StatelessWidget {
  const ScrollProducts({
    Key? key,
    required this.prodnames,
    required this.asimg,
  }) : super(key: key);

  final List prodnames;
  final List asimg;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: prodnames.length ,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
              pname: prodnames[index],
              sname: 'Julian Castro',
              img: asimg[index],
              peso: 1,
              price: 2600);

        },
      ),
    );
  }
}
