import 'dart:developer';

import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class ScrollPhoto extends StatelessWidget {
  const ScrollPhoto({
    Key? key,
    required this.listaA,
  }) : super(key: key);

  final List listaA;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Row(
            children: List.generate(
              listaA.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.3,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(listaA[index]),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: size.width * 0.2,
              height: size.height * 0.15,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: CircleAvatar(
                child: IconButton(
                  icon: const Icon(Icons.add, color: kPrimaryColor),
                  onPressed: () {log('Agregar');},
                  iconSize: 40.0,
                ),
                backgroundColor: kGrayColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
