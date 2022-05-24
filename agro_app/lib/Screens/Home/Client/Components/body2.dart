import 'package:agro_app/constants.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class Body2 extends StatelessWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kWhiteColor,
          bottom: const TabBar(
            labelColor: kPrimaryColor,
            unselectedLabelColor: kGrayColor,
            indicatorColor: kPrimaryColor,
            isScrollable: true,
            physics: BouncingScrollPhysics(),
            //'Todo','Frutas','Verduras','Huevos y lacteos','Tuberculos'
            tabs: [
              Tab(
                child: Text(
                  'Todo',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Frutas',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Verduras',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Huevos y lacteos',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Tuberculos',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Body(),
            Body(),
            Body(),
            Body(),
            Body(),
          ],
        ),
      ),
    );
  }
}
