import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class AlrHavAcc extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const AlrHavAcc({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? '¿No tienes una cuenta?' : '¿Ya tienes una cuenta?',
          style: const TextStyle(color: kWhiteColor)
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Regístrate Ahora' : 'Ingresa Ahora',
            style: const TextStyle(color: kWhiteColor),
          ),
        ),
      ],
    );
  }
}
