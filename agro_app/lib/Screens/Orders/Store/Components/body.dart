import 'package:agro_app/Elements/pedido_widget.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

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

          SizedBox(
            height: size.height * 0.05,
          ),

          const Center(
            child: Text(
              "Tus Encargos",
              style: TextStyle(
                  fontSize: 25,
                  color: kPrimaryColor, //font color
                  fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: size.height * 0.025,
          ),

          SizedBox(
            height: size.height * 0.025,
          ),

          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
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
                return const SizedBox(height: 10,);
            },
            ),
          ),
        ],
      ),
    );
  }
}
