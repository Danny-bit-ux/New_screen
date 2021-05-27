import 'package:flutter/material.dart';

import 'package:flutter_screen/components_product/app_button_product.dart';
import 'package:flutter_screen/components_product/column_text.dart';
import 'package:flutter_screen/components_product/container_book_now.dart';
import 'package:flutter_screen/components_product/guitar_product.dart';
import 'package:flutter_screen/components_product/row_john_smith.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyTwo(),
    );
  }
}

class BodyTwo extends StatelessWidget {
  const BodyTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppButtonProduct(),
        GuitarProduct(),
        Spacer(),
        buildColumn(),
        Spacer(),
        RowJohnSmith(),
        ContainerBookNow(),
      ],
    );
  }
}
