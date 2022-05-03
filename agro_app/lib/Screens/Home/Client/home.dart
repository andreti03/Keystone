import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'Components/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freshop',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.bold
            ),
          ),
        backgroundColor: kWhiteColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.shopping_basket,
              color: kPrimaryColor,
              size: size.height * 0.04,
            ),
          ),
          SizedBox(width: size.width * 0.04),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: Body(),
    );
  }
}