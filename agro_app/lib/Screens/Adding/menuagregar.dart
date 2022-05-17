// ignore_for_file: constant_identifier_names

import 'package:agro_app/Screens/Adding/addhyl.dart';
import 'package:agro_app/Screens/Adding/addverduras.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'addfrutas.dart';
import 'package:adobe_xd/page_link.dart';
//import './MainVendedor4.dart';
//import './MainVendedor5.dart';
import 'package:agro_app/Screens/Profile/Store/perfilv.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuAgregar extends StatelessWidget {
  const MenuAgregar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 112.0, end: 28.0),
            Pin(size: 40.0, start: 12.0),
            child: const Text(
              'Freshop',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: Color(0xff207b25),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 73.0, end: 72.0),
            Pin(size: 80.0, start: 104.0),
            child: const Text(
              'Selecciona el tipo de producto',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 35,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 34.0),
            Pin(size: 150.0, middle: 0.2964),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const AddFrutas(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(''),
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin:
                                const EdgeInsets.fromLTRB(11.0, 19.0, 1.0, 40.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff207b25),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              Color(0x80207b25),
                              Color(0x80103e13)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ],
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 38.0, middle: 0.4732),
                    child: const SingleChildScrollView(
                      primary: false,
                      child: Text(
                        'FRUTAS',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 35,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 34.0),
            Pin(size: 150.0, middle: 0.5606),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const AddVerduras(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(''),
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin:
                                const EdgeInsets.fromLTRB(11.0, 19.0, 1.0, 40.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff207b25),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              Color(0x80207b25),
                              Color(0x80103e13)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ],
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 38.0, middle: 0.4732),
                    child: const SingleChildScrollView(
                      primary: false,
                      child: Text(
                        'VERDURAS',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 35,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 33.0),
            Pin(size: 140.0, end: 130.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const AddHyL(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                    child: Stack(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(''),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              margin:
                                  const EdgeInsets.fromLTRB(0.0, 59.0, 12.0, 0.0),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff207b25),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                Color(0x80207b25),
                                Color(0x80103e13)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(3.0, 44.0, 0.0, 34.0),
                    child: SizedBox.expand(
                        child: Text(
                      'HUEVOS Y LÁCTEOS',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 35,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 47.3, start: 25.0),
            Pin(size: 47.3, start: 21.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const PerfilV(),
                ),
              ],
              child: SvgPicture.string(
                _svg_zjqvy,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zjqvy =
    '<svg viewBox="25.0 21.0 47.3 47.3" ><path transform="translate(15.0, 11.0)" d="M 33.6541748046875 10 C 20.59115600585938 10 10 20.5905647277832 10 33.6541748046875 C 10 46.71718978881836 20.59115600585938 57.308349609375 33.6541748046875 57.308349609375 C 46.71718978881836 57.308349609375 57.308349609375 46.71718978881836 57.308349609375 33.6541748046875 C 57.308349609375 20.5905647277832 46.71718978881836 10 33.6541748046875 10 Z M 33.6541748046875 53.36579132080078 C 22.76675033569336 53.36579132080078 13.94255924224854 44.53982543945312 13.94255924224854 33.6541748046875 C 13.94255924224854 22.76734161376953 22.76675033569336 13.94255924224854 33.6541748046875 13.94255924224854 C 43.87573623657227 13.94255924224854 52.27651214599609 21.7224178314209 53.26585388183594 31.68319129943848 L 26.58571624755859 31.68319129943848 L 31.68319129943848 26.58571624755859 L 28.89554595947266 23.79866218566895 L 20.43326377868652 32.26094436645508 C 19.66272926330566 33.02911376953125 19.66272926330566 34.27864456176758 20.43326377868652 35.04859161376953 L 28.89554595947266 43.51086807250977 L 31.68319129943848 40.72499847412109 L 26.58571624755859 35.6263427734375 L 53.26585388183594 35.6263427734375 C 52.27651214599609 45.58534240722656 43.87573623657227 53.36579132080078 33.6541748046875 53.36579132080078 Z" fill="#207b25" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
