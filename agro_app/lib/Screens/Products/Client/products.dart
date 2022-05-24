import 'package:agro_app/Screens/Products/Client/Components/body.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: Body(),
    );
  }

}
