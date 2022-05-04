import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:get/get.dart';

import '../../../../Elements/pedidoWidget.dart';
import '../../../../constants.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    child: Text(
                      "Freshop",

                      style: TextStyle(
                          fontSize: 30,
                          color: kPrimaryColor, //font color
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {

                  },
                  child: Icon(
                    CupertinoIcons.info,
                    color: kPrimaryColor,
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: size.height * 0.05,
          ),

          Center(
            child: Text(
              "Tus Pedidos",

              style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor, //font color
                  fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: size.height * 0.05,
          ),

          Expanded(
            child: ListView.separated(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Center(
                    child: PedidoButton(
                      estado: 'En camino',
                      press: () {
                      },
                      pedidoID: '230320221430',
                      direccion: 'Calle 72 # 26-64',
                    ));
              }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10,);
            },
            ),
          ),


        ],
      ),
    );
  }
}
