import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'Components/body.dart';

class Favorites extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Body(),
    );
  }
}