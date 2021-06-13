import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/home_screen.dart';

class AppButtonProduct extends StatelessWidget {
  const AppButtonProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildIcContainer(
            icon: Icon(Icons.arrow_back),
            tap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            }),
        buildIcContainer(icon: Icon(Icons.bookmark_border), tap: () {}),
      ],
    );
  }

  Container buildIcContainer({Icon icon, Null Function() tap}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: InkWell(
          onTap: tap, borderRadius: BorderRadius.circular(16), child: icon),
    );
  }
}
