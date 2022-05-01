import 'package:agro_app/Screens/Login/Client/login_screen.dart';
import 'package:agro_app/Screens/Login/Store/login_screen.dart';
import 'package:agro_app/Screens/Welcome/Components/background.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '¡Bienvenido!',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            '¿Con qué perfil quieres ingresar?',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: size.height * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.off(() => const LoginScreenV());
                    },
                    child: CircleAvatar(
                      child: Image.asset('assets/Images/vend.png',
                          fit: BoxFit.fill),
                      backgroundColor: kWhiteColor,
                      radius: size.height * 0.1,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  const Text(
                    'Vendedor',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.off(() => const LoginScreenC());
                    },
                    child: CircleAvatar(
                      child: Image.asset('assets/Images/vend.png',
                          fit: BoxFit.fill),
                      backgroundColor: kWhiteColor,
                      radius: size.height * 0.1,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  const Text(
                    'Comprador',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
