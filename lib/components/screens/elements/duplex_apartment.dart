import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/product_screen.dart';

import 'package:flutter_screen/constants.dart';

// ignore: must_be_immutable
class DuplexApartmentGuitar extends StatelessWidget {
  final String name, york, comment, image;

  final double note, price;

  DuplexApartmentGuitar({
    Key key,
    this.name,
    this.york,
    this.comment,
    this.note,
    this.price,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildPadding(context),
      ],
    );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProductScreen();
              },
            ),
          );
        },
        child: Container(
          height: 200.0,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 3.0,
                //spreadRadius: 5.0,
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => _fullImagePage(context),
                child: Hero(
                  tag: 'my-tag',
                  child: Container(
                    height: 180.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(image),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name, //Name
                      style: kTextStyleNam,
                    ),
                    Spacer(),
                    Text(
                      york, //York
                      style: kTextYork,
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.yellow[600],
                        ),
                        Text(
                          "4,8", //Note
                          style: kTextNum,
                        ),
                        Text(
                          comment, //Comment
                          style: kTextYork,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit,
                          size: 16,
                        ),
                        Text(
                          '5   ',
                          style: kTextNum,
                        ),
                        Icon(
                          Icons.access_alarm,
                          size: 16,
                        ),
                        Text(
                          '2  ',
                          style: kTextNum,
                        ),
                        Icon(
                          Icons.accessibility,
                          size: 16,
                        ),
                        Text(
                          '1',
                          style: kTextNum,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          "\$1,500",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor),
                        ),
                        Text(
                          ' / mo',
                          style: kTextYork,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _fullImagePage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFF),
          title: Text(name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'my-tag',
                child: Image.asset(image),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
