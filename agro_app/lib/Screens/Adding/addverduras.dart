// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:agro_app/Screens/Profile/Store/perfilv.dart';
import 'package:adobe_xd/page_link.dart';
import 'menuagregar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddVerduras extends StatelessWidget {
  const AddVerduras({Key? key}) : super(key: key);
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
              'Últimos detalles...',
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
            Pin(size: 216.0, start: 39.0),
            Pin(size: 29.0, middle: 0.3857),
            child: const Text(
              'Foto del producto',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 25,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 162.8, start: 35.0),
            Pin(size: 162.8, middle: 0.5),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_a7l4ql,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3.0, 2.0, 2.0, 3.0),
                  child: SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_yhb1o5,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 80.0, start: 35.0),
            Pin(size: 29.0, middle: 0.6756),
            child: const Text(
              'Precio',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 25,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 35.0),
            Pin(size: 29.0, middle: 0.7737),
            child: const Text(
              'Cantidad',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 25,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 231.0, start: 27.0),
            Pin(size: 42.0, middle: 0.7217),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.13, 0.437),
            child: SizedBox(
              width: 12.0,
              height: 28.0,
              child: Stack(
                children: const <Widget>[
                  SizedBox.expand(
                      child: Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 21,
                      color: Color(0xffbebebe),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.062, 0.443),
            child: SizedBox(
              width: 1.0,
              height: 42.0,
              child: SvgPicture.string(
                _svg_ayqyjs,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 231.0, start: 24.0),
            Pin(size: 42.0, middle: 0.8213),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 259.0, start: 39.0),
            Pin(size: 29.0, middle: 0.2664),
            child: const Text(
              'Nombre del producto',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 25,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 113.0, end: 36.0),
            Pin(size: 29.0, middle: 0.32),
            child: const Text(
              'Verduras',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 25,
                color: Color(0xff818181),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: const Alignment(0.062, 0.643),
            child: SizedBox(
              width: 1.0,
              height: 42.0,
              child: SvgPicture.string(
                _svg_ydbvc,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.133, 0.631),
            child: SizedBox(
              width: 22.0,
              height: 26.0,
              child: Stack(
                children: const <Widget>[
                  SizedBox.expand(
                      child: Text(
                    'Lb',
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 19,
                      color: Color(0xffbebebe),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 231.0, start: 35.0),
            Pin(size: 42.0, middle: 0.3167),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, middle: 0.5),
            Pin(size: 42.0, end: 62.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PerfilV(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff3f965e),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  const Center(
                    child: SizedBox(
                      width: 64.0,
                      height: 22.0,
                      child: Text(
                        'Agregar',
                        style: TextStyle(
                          fontFamily: 'Noto Sans',
                          fontSize: 16,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
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
                  pageBuilder: () => const MenuAgregar(),
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

const String _svg_a7l4ql =
    '<svg viewBox="0.0 0.0 162.8 162.8" ><path  d="M 0 0 L 162.8159332275391 0 L 162.8159332275391 162.8159332275391 L 0 162.8159332275391 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yhb1o5 =
    '<svg viewBox="3.0 2.0 157.8 157.8" ><path transform="translate(0.0, 0.0)" d="M 152.6759643554688 26.91830444335938 L 135.8976287841797 26.91830444335938 L 135.8976287841797 10.13997840881348 C 135.8976287841797 5.654685020446777 132.2429351806641 2 127.7576522827148 2 L 127.5084609985352 2 C 122.9401245117188 2 119.2854232788086 5.654685020446777 119.2854232788086 10.13997840881348 L 119.2854232788086 26.91830444335938 L 102.5901565551758 26.91830444335938 C 98.10488891601562 26.91830444335938 94.45020294189453 30.5729808807373 94.36713409423828 35.05828475952148 L 94.36713409423828 35.30746841430664 C 94.36713409423828 39.87582778930664 98.02181243896484 43.53050231933594 102.5901565551758 43.53050231933594 L 119.2854232788086 43.53050231933594 L 119.2854232788086 60.22576522827148 C 119.2854232788086 64.71106719970703 122.9401245117188 68.44880676269531 127.5084609985352 68.36574554443359 L 127.7576522827148 68.36574554443359 C 132.2429504394531 68.36574554443359 135.8976287841797 64.71106719970703 135.8976287841797 60.22576522827148 L 135.8976287841797 43.53050231933594 L 152.6759643554688 43.53050231933594 C 157.1612548828125 43.53050231933594 160.81591796875 39.87581634521484 160.81591796875 35.39052200317383 L 160.81591796875 35.05828475952148 C 160.81591796875 30.5729808807373 157.1612548828125 26.91830444335938 152.6759643554688 26.91830444335938 Z M 110.9793395996094 60.22576522827148 L 110.9793395996094 51.83660507202148 L 102.5901565551758 51.83660507202148 C 98.18795013427734 51.83660507202148 94.03488922119141 50.09232330322266 90.87857055664062 47.01906585693359 C 87.80531311035156 43.86275100708008 86.06102752685547 39.70970153808594 86.06102752685547 35.05828475952148 C 86.06102752685547 32.06808471679688 86.89165496826172 29.32707214355469 88.30368804931641 26.91830444335938 L 19.61220550537109 26.91830444335938 C 10.47549533843994 26.91830444335938 3.000000476837158 34.39379501342773 3.000000476837158 43.53050231933594 L 3.000000476837158 143.2037048339844 C 3.000000476837158 152.3404388427734 10.47549533843994 159.8159484863281 19.61220550537109 159.8159484863281 L 119.2854232788086 159.8159484863281 C 128.422119140625 159.8159484863281 135.8976287841797 152.3404388427734 135.8976287841797 143.2037048339844 L 135.8976287841797 74.42920684814453 C 133.4057769775391 75.84124755859375 130.5817260742188 76.75491333007812 127.425407409668 76.75491333007812 C 118.3717575073242 76.67183685302734 110.9793395996094 69.27942657470703 110.9793395996094 60.22576522827148 Z M 110.6470794677734 143.2037048339844 L 27.91830825805664 143.2037048339844 C 24.51281356811523 143.2037048339844 22.51934051513672 139.2998657226562 24.59586334228516 136.5588531494141 L 41.04194641113281 114.7137985229492 C 42.78623580932617 112.3880844116211 46.19173049926758 112.5542068481445 47.85294723510742 114.8799362182617 L 61.14271926879883 134.8976135253906 L 82.82164764404297 105.9924087524414 C 84.48287963867188 103.8328018188477 87.72224426269531 103.749755859375 89.38346099853516 105.9093475341797 L 113.8864669799805 136.4757995605469 C 116.0460586547852 139.2168121337891 114.1356582641602 143.2037048339844 110.6470794677734 143.2037048339844 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ayqyjs =
    '<svg viewBox="226.8 638.0 1.0 42.0" ><path transform="translate(-2964.0, 510.0)" d="M 3190.830810546875 127.9999923706055 L 3190.830810546875 170" fill="none" stroke="#707070" stroke-width="2" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ydbvc =
    '<svg viewBox="226.8 726.0 1.0 42.0" ><path transform="translate(-2964.0, 598.0)" d="M 3190.830810546875 127.9999923706055 L 3190.830810546875 170" fill="none" stroke="#707070" stroke-width="2" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zjqvy =
    '<svg viewBox="25.0 21.0 47.3 47.3" ><path transform="translate(15.0, 11.0)" d="M 33.6541748046875 10 C 20.59115600585938 10 10 20.5905647277832 10 33.6541748046875 C 10 46.71718978881836 20.59115600585938 57.308349609375 33.6541748046875 57.308349609375 C 46.71718978881836 57.308349609375 57.308349609375 46.71718978881836 57.308349609375 33.6541748046875 C 57.308349609375 20.5905647277832 46.71718978881836 10 33.6541748046875 10 Z M 33.6541748046875 53.36579132080078 C 22.76675033569336 53.36579132080078 13.94255924224854 44.53982543945312 13.94255924224854 33.6541748046875 C 13.94255924224854 22.76734161376953 22.76675033569336 13.94255924224854 33.6541748046875 13.94255924224854 C 43.87573623657227 13.94255924224854 52.27651214599609 21.7224178314209 53.26585388183594 31.68319129943848 L 26.58571624755859 31.68319129943848 L 31.68319129943848 26.58571624755859 L 28.89554595947266 23.79866218566895 L 20.43326377868652 32.26094436645508 C 19.66272926330566 33.02911376953125 19.66272926330566 34.27864456176758 20.43326377868652 35.04859161376953 L 28.89554595947266 43.51086807250977 L 31.68319129943848 40.72499847412109 L 26.58571624755859 35.6263427734375 L 53.26585388183594 35.6263427734375 C 52.27651214599609 45.58534240722656 43.87573623657227 53.36579132080078 33.6541748046875 53.36579132080078 Z" fill="#207b25" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
