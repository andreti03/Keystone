// ignore_for_file: non_constant_identifier_names

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
import 'package:postgres/postgres.dart';

import '../../../../main.dart';
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
              'cosa ¡Logeate!',
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
                log(password);
                log(email);
                iniciar_sesion(email, password).then((news) {
                  if (news[0][0][0] == true) {
                    datos_usuario = (news[1][0]);
                    Get.off(HomeStore());
                  } else {
                    log("Error");
                  }
                  ;
                });
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

  Future iniciar_sesion(email, password) async {
    var connection = PostgreSQLConnection(
        "bff4spr7rvdolrbjs6ix-postgresql.services.clever-cloud.com",
        5432,
        "bff4spr7rvdolrbjs6ix",
        username: "u1gnj6p7agoidy9oejy4",
        password: "txhGYsajW3lbCBjMUCax");
    await connection.open();
    var res = await connection.query("SELECT count(*) from vendedor");
    var id = res.first.cast<int>()[0];
    var info_usuario = await connection.query(
        "SELECT * FROM vendedor WHERE correo = @cor and contrasena = @pas LIMIT 1;",
        substitutionValues: {"cor": email, "pas": password});
    var valor = await connection.query(
        "SELECT exists (SELECT 1 FROM vendedor WHERE correo = @cor and contrasena = @pas LIMIT 1);",
        substitutionValues: {"cor": email, "pas": password});
    await connection.close();
    return [valor, info_usuario];
  }
}
