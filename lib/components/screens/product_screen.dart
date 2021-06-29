import 'package:flutter/material.dart';
import 'package:flutter_screen/components/information/information_card_product.dart';

import 'package:flutter_screen/components_product/app_button_product.dart';
import 'package:flutter_screen/components_product/column_text.dart';
import 'package:flutter_screen/components_product/container_book_now.dart';
import 'package:flutter_screen/components_product/guitar_product.dart';
import 'package:flutter_screen/components_product/row_john_smith.dart';

class ProductScreen extends StatelessWidget {
  final String name, york, comment, price;
  const ProductScreen({Key key, this.name, this.york, this.comment, this.price})
      : super(key: key);

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
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                AppButtonProduct(),
                GuitarProduct(
                  image: 'asset/images/electric_guitar_PNG24177.png',
                  tag: 'tag-string',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: buildColumn(
                    name: iTextName,
                    york: iTextYork,
                    comment: iTextComment,
                    price: iTextPrice,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  RowJohnSmith(),
                  ContainerBookNow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
