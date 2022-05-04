import 'package:agro_app/Screens/Home/Client/home.dart';
import 'package:agro_app/Screens/Login/Client/login_screen.dart';
import 'package:agro_app/Screens/Login/Store/login_screen.dart';
import 'package:agro_app/Screens/Pedidos/Client/login_screen.dart';
import 'package:agro_app/Screens/Welcome/welcome_screen.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/Sign_up/Client/sign_up.dart';
import 'Screens/Sign_up/Store/sign_up.dart';
import 'Screens/Sign_up/Store/sign_up2.dart';
import 'Screens/Sign_up/Store/sign_up3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const ViewsScreens(),
    );
  }
}

class ViewsScreens extends StatelessWidget {
  const ViewsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Screens'),
      ),
      body: const BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'Welcome',
    'Login Vendedor',
    'Login Comprador',
    'Sing Up Comprador',
    'Sing Up Vendedor',
    'Info Tienda',
    'Info Tienda 2',
    'Home',
    'Pedidos Comprador'
  ];
  final pags = [
    const WelcomeScreen(),
    const LoginScreenV(),
    const LoginScreenC(),
    const SignUpScreenC(),
    const SignUpScreenV(),
    const SignUpScreen2V(),
    const SignUpScreen3V(),
    const Home(),
    const PedidosC(),
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(titles[index]),
          onTap: () {
            Get.to(() => pags[index]);
          },
        ),
      );
    },
  );
}
