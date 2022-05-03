import 'dart:developer';
import 'package:agro_app/Screens/Login/Store/login_screen.dart';
import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/Elements/alr_hav_acc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'background.dart';

class InfoStore2 extends StatelessWidget {
  InfoStore2({Key? key}) : super(key: key);

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
            'Ya casi',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          const Text(
            'terminas ...',
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
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'Continuar',
            press: () {
              log(password);
              log(email);
              log(nombre);
              log(apellido);
              log(bdate);
              log(telnum);
            
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
}
