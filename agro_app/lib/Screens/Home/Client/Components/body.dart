import 'dart:developer';
import 'package:agro_app/Elements/rounded_search.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  
  final schController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    String sch = '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            RoundedSearch(
              textController: schController, 
              hintText: 'Hola', 
              onChanged: (value) {
                  sch = value;
                }
              ),
            IconButton(
              onPressed: () {log(sch);}, 
              icon: Icon( 
                Icons.search, 
                color: kPrimaryColor,
                size: size.height * 0.04,),
              ),
          ],
        ),
      ],
    );
  }
}