import 'package:agro_app/Screens/Login/Client/Components/background.dart';
import 'package:flutter/material.dart';

import '../../../../Elements/rounded_button.dart';
import '../../../../Elements/rounded_input.dart';
import '../../../../constants.dart';

// ignore: must_be_immutable
class InfoStore1 extends StatelessWidget {
  InfoStore1({Key? key}) : super(key: key);
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController productQuantity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ultimos detalles',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Nombre del producto',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                  RoundedInput(
                      hintText: "",
                      onChanged: (String value) {},
                      textController: productPrice,
                      icon: Icons.add),
                  const Text(
                    'precio',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                  RoundedInput(
                      hintText: "",
                      onChanged: (String value) {},
                      textController: productName,
                      icon: Icons.add),
                  const Text(
                    'Cantidad',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                  RoundedInput(
                      hintText: "",
                      onChanged: (String value) {},
                      textController: productQuantity,
                      icon: Icons.add),
                ],
              ),
              RoundedButton(
                text: 'Continuar',
                press: () {

                },
                pd: 2,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
