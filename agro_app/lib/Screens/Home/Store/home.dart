// ignore_for_file: prefer_const_constructors_in_immutables


import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Orders/Store/pedidos_s.dart';
import '../../Profile/Store/perfilv.dart';

class HomeStore extends StatefulWidget {
  HomeStore({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeStore>  {
  int _currentPage = 0;
  int items = 0;

  final _pages = [
    const PedidosV(),
    PerfilV(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
              icon:_currentPage == 0 ? SvgPicture.asset('assets/Icons/list.svg', color: kPrimaryColor): SvgPicture.asset('assets/Icons/list.svg', color: kGrayColor),
              label: 'Encargos'),
          BottomNavigationBarItem(
              icon:_currentPage == 1 ? SvgPicture.asset('assets/Icons/profile.svg', color: kPrimaryColor): SvgPicture.asset('assets/Icons/profile.svg', color: kGrayColor),
              label: 'Perfil')
        ],
        fixedColor: kPrimaryColor,
        backgroundColor: kWhiteColor,
      )
    );
  }
}