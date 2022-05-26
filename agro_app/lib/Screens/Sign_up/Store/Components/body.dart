import 'dart:developer';

import 'package:agro_app/Elements/alr_hav_acc.dart';
import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/Screens/Login/Store/login_screen.dart';
import 'package:agro_app/Screens/Sign_up/Store/sign_up2.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:postgres/postgres.dart';

import 'background.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  final bdateController = TextEditingController();
  final numbController = TextEditingController();
  final surenameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String email = '';
    String password = '';
    String nombre = '';
    String apellido = '';
    String bdate = '';
    String telnum = '';

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            'Información',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          const Text(
            'personal',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          RoundedInput(
            textController: nameController,
            icon: Icons.contacts_rounded,
            hintText: 'Nombres',
            onChanged: (value) {
              nombre = value;
            },
          ),
          RoundedInput(
            textController: surenameController,
            icon: Icons.contacts_rounded,
            hintText: 'Apellidos',
            onChanged: (value) {
              apellido = value;
            },
          ),
          RoundedInput(
            textController: bdateController,
            icon: Icons.cake,
            hintText: 'Fecha de nacimiento',
            onChanged: (value) {
              password = value;
            },
          ),
          RoundedInput(
            textController: numbController,
            icon: Icons.phone_iphone_outlined,
            hintText: 'Telefono',
            onChanged: (value) {
              password = value;
            },
          ),
          RoundedInput(
            textController: emailController,
            icon: Icons.person_sharp,
            hintText: 'Correo',
            onChanged: (value) {
              password = value;
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
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            text: 'Continuar',
            press: () {
              log(password);
              log(email);
              log(nombre);
              log(apellido);
              log(bdate);
              log(telnum);
              subir_datos(
                  nombre, apellido, bdate, telnum, email, password);
              Get.to(() => const SignUpScreen2V());
            },
            pd: 2,
          ),
          SizedBox(height: size.height * 0.05),
          AlrHavAcc(
            login: false,
            press: () {
              log('Registarse VENDEDOR');
              Get.off(() => const LoginScreenV());
            },
          ),

        ],
      ),
    );
  }
<<<<<<< HEAD
    // ignore: non_constant_identifier_names
    Future subir_datos(nombre, apellido, bdate, telnum, email, password) async {
=======

  Future subir_datos(nombre, apellido, bdate, telnum, email, password) async {
>>>>>>> 1e885a18f20ac59482ec80cd98ae866b9e1f653f
    var connection = PostgreSQLConnection(
        "bff4spr7rvdolrbjs6ix-postgresql.services.clever-cloud.com",
        5432,
        "bff4spr7rvdolrbjs6ix",
        username: "u1gnj6p7agoidy9oejy4",
        password: "txhGYsajW3lbCBjMUCax");
    await connection.open();
    var res = await connection.query("SELECT count(*) from vendedor");
    var id = res.first.cast<int>()[0];
    await connection.query(
        "insert into vendedor values (@id, @nom, @ape, @ced, @fec, @dep, @ciu, @cor, @pas)",
        substitutionValues: {
          "id": id + 1,
          "nom": nombre,
          "ape": apellido,
          "ced": 123,
          "fec": bdate,
          "dep": "departamento",
          "ciu": "ciudad",
          "cor": email,
          "pas": password
        });
    await connection.close();
  }
}
