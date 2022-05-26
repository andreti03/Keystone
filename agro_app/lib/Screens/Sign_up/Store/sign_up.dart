import 'package:flutter/material.dart';
import 'Components/body.dart';

class SignUpScreenV extends StatelessWidget {
  const SignUpScreenV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: Body()),
      ),
    );
  }
}