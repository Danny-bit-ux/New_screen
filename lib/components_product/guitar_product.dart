import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GuitarProduct extends StatelessWidget {
  var index;

  GuitarProduct({
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
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
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
          child: GestureDetector(
            onTap: () => _fullImagePage(context, index.toString()),
            child: Hero(
              tag: index.toString(),
              child: Container(
                height: 180.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('asset/images/electric_guitar_PNG24177.png'),
              ),
            ),
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
