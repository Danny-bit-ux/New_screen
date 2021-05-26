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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
          child: Container(
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
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15),
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
          child: Icon(Icons.bookmark_border),
        ),
      ],
    );
  }
}
