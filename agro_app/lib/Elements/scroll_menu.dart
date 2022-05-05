import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ScrollMenu extends StatelessWidget {
  const ScrollMenu({
    Key? key,
    required this.listaC,
    required this.listaP,
  }) : super(key: key);

  final List listaC;
  final List listaP;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listaC.length,
          (index) => Categorie(texto: listaC[index], press: listaP[index]),
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
