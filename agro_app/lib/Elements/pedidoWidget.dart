import 'package:agro_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PedidoButton extends StatelessWidget {
  final String pedidoID;
  final String estado;
  final String direccion;
  final VoidCallback press;
  final Color color;
  final double fontSize;

  const PedidoButton({
    Key? key,
    required this.pedidoID,
    required this.estado,
    required this.direccion,
    required this.press,
    this.color = kPrimaryLigthColor,
    this.fontSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: size.height * 0.15,
        width: size.width * 0.8,
          decoration: BoxDecoration(
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pedido: $pedidoID",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: fontSize,
                          color: color, //font color
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Estado: $estado",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: fontSize,
                          color: color, //font color
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Dirección: $direccion",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: fontSize,
                          color: color, //font color
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Icon(
                CupertinoIcons.chevron_forward,
                color: color,
              )
            ],
          )),
    );
  }
}
