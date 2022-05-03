import 'dart:developer';
import 'package:agro_app/Screens/Login/Store/login_screen.dart';
import 'package:agro_app/Screens/Sign_up/Store/sign_up3.dart';
import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/Elements/alr_hav_acc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'background.dart';

class InfoStore1 extends StatelessWidget {
  InfoStore1({Key? key}) : super(key: key);

  final stnameController = TextEditingController();
  final deptController = TextEditingController();
  final numbController = TextEditingController();
  final horController = TextEditingController();
  final muncController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String munc = '';
    String stname = '';
    String horario = '';
    String dept = '';
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
            'Información de',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          const Text(
            'tu negocio',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          RoundedInput(
            textController: stnameController,
            icon: Icons.store,
            hintText: 'Nombre de la tienda',
            onChanged: (value) {
              stname = value;
            },
          ),
          RoundedInput(
            textController: horController,
            icon: Icons.access_time_filled,
            hintText: 'Horario de atencion',
            onChanged: (value) {
              horario = value;
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
            textController: deptController,
            icon: Icons.location_on,
            hintText: 'Departamento',
            onChanged: (value) {
              dept = value;
            },
          ),
          RoundedInput(
            textController: muncController,
            icon: Icons.location_on,
            hintText: 'Municipio',
            onChanged: (value) {
              munc = value;
            },
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'Continuar',
            press: () {
              log(stname);
              log(horario);
              log(dept);
              log(telnum);
              log(munc);
              Get.to(() => const SignUpScreen3V());
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
