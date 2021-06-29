import 'package:flutter/material.dart';
import 'package:flutter_screen/components/information/info_card_product_esp.dart';

import 'package:flutter_screen/components_product/app_button_product.dart';
import 'package:flutter_screen/components_product/column_text.dart';
import 'package:flutter_screen/components_product/container_book_now.dart';
import 'package:flutter_screen/components_product/guitar_product.dart';
import 'package:flutter_screen/components_product/row_john_smith.dart';

class ProductScreenGu extends StatelessWidget {
  final String name, york, comment, price;
  const ProductScreenGu(
      {Key key, this.name, this.york, this.comment, this.price})
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      AppButtonProduct(),
                      GuitarProduct(
                        image: 'asset/images/electric_guitar_PNG24179.png',
                        tag: 'tag-string-gu',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: buildColumn(
                          name: iTextNameEsp,
                          york: iTextYorkEsp,
                          comment: iTextCommentEsp,
                          price: iTextPriceEsp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      RowJohnSmith(),
                      ContainerBookNow(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
