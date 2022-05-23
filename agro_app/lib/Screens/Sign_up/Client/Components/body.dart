import 'dart:developer';

import 'package:agro_app/Elements/alr_hav_acc.dart';
import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/Screens/Login/Client/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  onPressed:() {Get.back();}, icon: SvgPicture.asset('assets/Icons/Back.svg'))
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
              bdate = value;
            },
          ),
          RoundedInput(
            textController: numbController,
            icon: Icons.phone_iphone_outlined,
            hintText: 'Telefono',
            onChanged: (value) {
              telnum = value;
            },
          ),
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
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'Registrarse',
            press: () {
              log(nombre);
              log(apellido);
              log(bdate);
              log(telnum);
              log(email);
              log(password);
              subir_datos(nombre, apellido, bdate, telnum,email,password);
            },
            pd: 2,
          ),
          SizedBox(height: size.height * 0.05),
          AlrHavAcc(
            login: false,
            press: () {
              log('Registarse COMPRADOR');
              Get.off(() => const LoginScreenC());
            },
          ),
        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Future subir_datos(nombre, apellido, bdate, telnum, email, password) async {
    var connection = PostgreSQLConnection(
        "bff4spr7rvdolrbjs6ix-postgresql.services.clever-cloud.com",
        5432,
        "bff4spr7rvdolrbjs6ix",
        username: "u1gnj6p7agoidy9oejy4",
        password: "txhGYsajW3lbCBjMUCax");
    await connection.open();
    var res = await connection.query("SELECT count(*) from cliente");
    var id = res.first.cast<int>()[0];
    await connection.query(
        "insert into cliente values (@id, @nom, @ape, @ced, @tel, @fec, @dep, @ciu, @cor, @pas)",
      substitutionValues: {"id":id+1, "nom":nombre, "ape":apellido, "ced":123, "tel":telnum,
        "fec":bdate, "dep":"departamento", "ciu":"ciudad", "cor":email, "pas":password
      });
    await connection.close();
  }
}
