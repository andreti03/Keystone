// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:agro_app/Screens/Favorites/Client/favorites.dart';
import 'package:agro_app/Screens/Orders/Client/pedidos_c.dart';
import 'package:agro_app/Screens/Products/Client/products.dart';
import 'package:agro_app/Screens/Profile/Client/perfilc.dart';
import 'package:agro_app/constants.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home>  {
  int _currentPage = 0;
  int items = 0;

  final _pages = [
    const Products(),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              child: IconButton(
                splashColor: kPrimarykColor,
                padding: const EdgeInsets.all(3.0),
                onPressed: () {}, 
                icon: SvgPicture.asset('assets/Icons/cart.svg'),
              ),
              badgeContent: Text("$items",
                style: const TextStyle(
                color: kWhiteColor, 
                fontSize: 16
                ),
              ),
              badgeColor: kPrimaryDarkColor,
              position: BadgePosition.bottomEnd(),
            ),
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
              icon:_currentPage == 0 ? SvgPicture.asset('assets/Icons/product.svg', color: kPrimaryColor):SvgPicture.asset('assets/Icons/product.svg', color: kGrayColor,), 
              label: 'Productos'),
          BottomNavigationBarItem(
              icon:_currentPage == 1 ? SvgPicture.asset('assets/Icons/list.svg', color: kPrimaryColor): SvgPicture.asset('assets/Icons/list.svg', color: kGrayColor), 
              label: 'Ordenes'),
          BottomNavigationBarItem(
              icon:_currentPage == 2 ? SvgPicture.asset('assets/Icons/favorite.svg', color: kPrimaryColor): SvgPicture.asset('assets/Icons/favorite.svg', color: kGrayColor), 
              label: 'Favoritos'),
          BottomNavigationBarItem(
              icon:_currentPage == 3 ? SvgPicture.asset('assets/Icons/profile.svg', color: kPrimaryColor): SvgPicture.asset('assets/Icons/profile.svg', color: kGrayColor),
              label: 'Perfil')
        ],
        fixedColor: kPrimaryColor,
        backgroundColor: kWhiteColor,
      )
    );
  }
}