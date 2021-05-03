import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/elements/my_bottom_bar.dart';

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
      bottomNavigationBar: MyBottomBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InvisibleAppBar(
            name: 'Jim Carey',
          ),
          MyBestText(),
          SearchBtnAndSettings(),
          ContainerButtonInBlue(),
          DuplexApartmentGuitar(),
        ],
      ),
    );
  }
}
