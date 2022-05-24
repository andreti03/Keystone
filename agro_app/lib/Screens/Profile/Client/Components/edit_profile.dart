import 'dart:developer';

import 'package:agro_app/Elements/rounded_button.dart';
import 'package:agro_app/Elements/rounded_input.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Freshop',
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: kWhiteColor,
        iconTheme: const IconThemeData(color: kPrimaryColor),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/Icons/cart.svg'),
          ),
          SizedBox(width: size.width * 0.04),
        ],
      ),
      body: Main(size: size,),
    );
  }
}

// ignore: must_be_immutable
class Main extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Main({
    Key? key,
    required this.size,
  }) : super(key: key);

  String newname = '';
  String newcity = '';
  String newdept = '';
  String newtel = '';
  final Size size;

  final nameController= TextEditingController();
  final cityController= TextEditingController();
  final deptController= TextEditingController();
  final telController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox( height: size.height * 0.05),
          const Center(
            child: Text(
              'Editar Datos',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.015),
          Row(
          children: <Widget>[
            SizedBox( width: size.width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Nombre:',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.2,
                ),
                RoundedInput(
                  textController: nameController, 
                  hintText: 'Nombre', 
                  onChanged: (value){log(newname = value);},
                ),
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
                RoundedInput(
                  icon: Icons.location_on,
                  textController: cityController, 
                  hintText: 'Ciudad', 
                  onChanged: (value){log(newcity = value);},
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Departamento: ',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                RoundedInput(
                  icon: Icons.location_on,
                  textController: deptController, 
                  hintText: 'Departamento', 
                  onChanged: (value){log(newdept = value);},
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Telefono: ',
                  style: TextStyle(
                    color: kPrimarykColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.2,
                ),
                RoundedInput(
                  icon: Icons.phone_iphone,
                  textController: telController, 
                  hintText: 'Telefono ', 
                  onChanged: (value){log(newtel = value);},
                ),
                Center(
                  child: RoundedButton(
                    text: 'Guardar', 
                    press: (){
                      log(newname);
                      log(newcity);
                      log(newdept);
                      log(newtel);
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}
