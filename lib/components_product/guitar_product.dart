import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GuitarProduct extends StatelessWidget {
  final String image, tag;
  GuitarProduct({
    Key key,
    this.image,
    this.tag,
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
      padding: const EdgeInsets.all(1.0),
      child: GestureDetector(
        child: Container(
          height: 200.0,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: GestureDetector(
            onTap: () => _fullImagePage(context),
            child: Hero(
              tag: tag,
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
        ),
      ),
    );
  }

  void _fullImagePage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFF1),
          title: Text('Gibson Les Paul'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: Image.asset(image),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
