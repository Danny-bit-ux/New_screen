import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/product_screen.dart';

import 'package:flutter_screen/constants.dart';

// ignore: must_be_immutable
class DuplexApartmentGuitar extends StatelessWidget {
  var index;

  DuplexApartmentGuitar({
    Key key,
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
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => _fullImagePage(context, index.toString()),
                child: Hero(
                  tag: index.toString(),
                  child: Container(
                    height: 180.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                        'asset/images/electric_guitar_PNG24177.png'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Gibson Les Paul Custom', //Name
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Stockton, New Hampshire', //York
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300),
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
                          '4.8', //Note
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " (256 Review's)", //Comment
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.access_alarm,
                          size: 16,
                        ),
                        Text(
                          '2  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.accessibility,
                          size: 16,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$1,500',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor),
                        ),
                        Text(
                          ' / mo',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
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

  void _fullImagePage(BuildContext context, String tag) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFF1),
          title: Text('Big Image'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: Image.asset('asset/images/electric_guitar_PNG24177.png'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
