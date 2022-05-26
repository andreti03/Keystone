import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'Components/body.dart';

class PedidosV extends StatelessWidget {
  const PedidosV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Body(),
    );
  }
}