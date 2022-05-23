// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:agro_app/Screens/Favorites/Client/favorites.dart';
import 'package:agro_app/Screens/Orders/Client/pedidos_c.dart';
import 'package:agro_app/Screens/Profile/Client/perfilc.dart';
import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Components/body.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home>  {
  int _currentPage = 0;

  final _pages = [
    Body(),
    const PedidosC(),
    Favorites(),
    PerfilC()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freshop',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
            ),
          ),
        backgroundColor: kWhiteColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset('assets/Icons/cart.svg'),
          ),
          SizedBox(width: size.width * 0.04),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/product.svg',), 
              label: 'Productos'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/list.svg'), 
              label: 'Ordenes'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/favorite.svg'), 
              label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/profile.svg'), 
              label: 'Perfil')
        ],
        fixedColor: kPrimaryColor,
        backgroundColor: kWhiteColor,
      )
    );
  }
}