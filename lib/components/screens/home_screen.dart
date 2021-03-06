import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/product_screen.dart';
import 'package:flutter_screen/components/screens/product_screen_gu.dart';

import 'elements/cont_button.dart';
import 'elements/duplex_apartment.dart';
import 'elements/invisible_app_bar.dart';
import 'elements/my_best_text.dart';
import 'elements/search_and_settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      //bottomNavigationBar: MyBottomBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            InvisibleAppBar(),
            MyBestText(),
            SearchBtnAndSettings(),
            ContainerButtonInBlue(),
            DuplexApartmentGuitar(
              name: 'Gibson Les Paul',
              york: 'Stockton, New Hampshire',
              comment: " (256 Review's)",
              image: 'asset/images/electric_guitar_PNG24177.png',
              tag: 'gibson-tag',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProductScreen();
                    },
                  ),
                );
              },
              //note: 4.8,
              price: 1500,
            ),
            DuplexApartmentGuitar(
              name: 'ESP LTD Les Paul',
              york: 'U.S.A, Maiami',
              comment: " (549 Review's)",
              image: 'asset/images/electric_guitar_PNG24179.png',
              tag: 'esp-tag',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProductScreenGu();
                    },
                  ),
                );
              },
              price: 1349,
            ),
            //DuplexApartmentGuitar(),
          ],
        ),
      ),
    );
  }
}
