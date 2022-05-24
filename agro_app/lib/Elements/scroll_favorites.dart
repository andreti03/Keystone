import 'package:agro_app/Elements/favorites_card.dart';
// ignore: unused_import
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ScrollFavorites extends StatelessWidget {
  const ScrollFavorites({
    Key? key,
    required this.prodnames,
    required this.asimg,
  }) : super(key: key);

  final List prodnames;
  final List asimg;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          prodnames.length,
          (index) => FavoriteCard(
              pname: prodnames[index],
              sname: 'Julian Castro',
              img: asimg[index],
              peso: 1,
              price: 2600,
              star: true,),
        ),
      ),
    );
  }
}

