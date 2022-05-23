import 'dart:developer';

import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/scroll_photo.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final asimg = [
    'assets/Images/dilema-papa.jpg',
    'assets/Images/Aguacate.jpg',
    'assets/Images/Huevo.jpg',
    'assets/Images/Huevo.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'Perfil',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ScrollPhoto(listaA: asimg),
            ProfileData(
                size: size,
                name: 'Julian Castro',
                stars: 5.0,
                city: 'Bogota D.C',
                dept: 'Bogota D.C',
                tel: '305-912-8646'),
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height*0.05,),
                  RoundedButton(
                      text: 'Editar Perfil',
                      press: () {log('Edit');},
                      color: kPrimarykColor,
                      pd: 10.0,
                  ),
                  RoundedButton(
                      text: 'Ayuda',
                      press: () {log('Log Out');},
                      color: kPrimarykColor,
                      pd: 10.0,
                  ),
                  RoundedButton(
                      text: 'Cerrar sesion',
                      press: () {log('Log Out');},
                      color: kPrimarykColor,
                      pd: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  const ProfileData({
    Key? key,
    required this.size,
    required this.name,
    required this.stars,
    required this.city,
    required this.dept,
    required this.tel,
  }) : super(key: key);

  final Size size;
  final String name;
  final double stars;
  final String city;
  final String dept;
  final String tel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width * 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(
                color: kPrimaryDarkColor,
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height * 0.015),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Text(
                  '$stars',
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                const Text(
                  'Ciudad:',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.2,
                ),
                Text(
                  city,
                  style: const TextStyle(
                    color: kPrimaryLigthColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                const Text(
                  'Departamento: ',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.045,
                ),
                Text(
                  dept,
                  style: const TextStyle(
                    color: kPrimaryLigthColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                const Text(
                  'Telefono: ',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.15,
                ),
                Text(
                  tel,
                  style: const TextStyle(
                    color: kPrimaryLigthColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
