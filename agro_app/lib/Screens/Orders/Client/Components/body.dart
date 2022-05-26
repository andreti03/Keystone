import 'package:agro_app/Elements/pedido_widget.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passController = TextEditingController();

  final states= ['En Camino','Entregado', 'Entregado', 'Cancelado', 'Entregado'];
  final idsss=['230326721430','233920221430','230320581430','230320035430','2305632221430'];
  final colores=[kPrimaryColor,kPrimaryDarkColor,kPrimaryDarkColor,kRedColor,kPrimaryDarkColor];

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
              "Tus Pedidos",
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
              itemCount: 5,
              itemBuilder: (context, index) {
                return Center(
                    child: PedidoButton(
                      estado: states[index],
                      press: () {
                      },
                      pedidoID: idsss[index],
                      direccion: 'Calle 72 # 26-64',
                      color: colores[index],
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
