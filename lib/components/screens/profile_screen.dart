import 'package:flutter/material.dart';
import 'package:flutter_screen/components_product/app_button_product.dart';
import 'package:flutter_screen/components_profile/card_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppButtonProduct(),
            CardProfile(),
          ],
        ),
      ),
    );
  }
}
