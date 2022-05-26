import 'dart:developer';

import 'package:agro_app/Elements/alr_hav_acc.dart';
import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/Screens/Sign_up/Store/sign_up.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: unused_import
import 'package:get/get.dart';

import '../../../Home/Store/home.dart';
import 'background.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String email = '';
    String password = '';
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: SvgPicture.asset('assets/Icons/Back.svg'))
              ],
            ),
            const Text(
              '¡Bienvenido',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
            const Text(
              'Vendedor!',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            const Text(
              'Antes de cualquier',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
            const Text(
              'cosa ¡Logueate!',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
              ),
            ),
            SizedBox(height: size.height * 0.10),
            RoundedInput(
              textController: emailController,
              icon: Icons.person_sharp,
              hintText: 'Correo',
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedInput(
              textController: passController,
              icon: Icons.lock,
              hintText: 'Contraseña',
              onChanged: (value) {
                password = value;
              },
              obText: true,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'Ingresar',
              press: () {
                print("Hola");
                Get.off(HomeStore());
                log(password);
                log(email);
              },
              pd: 2,
            ),
            SizedBox(height: size.height * 0.05),
            AlrHavAcc(
              press: () {
                log('Registarse VENDEDOR');
                Get.off(() => const SignUpScreenV());
              },
            ),
          ],
        ),
      ),
    );
  }
}
