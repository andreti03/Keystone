import 'package:agro_app/Elements/product_card.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ScrollMenu extends StatelessWidget {
  const ScrollMenu({
    Key? key,
    required this.listaI,
    required this.listaP,
    required this.listaN,
    required this.listaV,
    required this.listaW,
  }) : super(key: key);

  final List listaI;
  final List listaP;
  final List listaN;
  final List listaV;
  final List listaW;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listaI.length,
          (index) => ProductCard(
              pname: listaN[index],
              sname: listaV[index],
              img: listaI[index],
              peso: listaP[index],
              price: listaW[index]
            ),
        ),
      ),
    );
  }
}

class Categorie extends StatelessWidget {
  const Categorie({
    Key? key,
    required this.texto,
    required this.press,
  }) : super(key: key);

  final String texto;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: kPrimaryColor,
              width: 2.0,
            ),
          ),
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 16,
          ),
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
