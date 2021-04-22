import 'package:flutter/material.dart';
import 'package:flutter_screen/constants.dart';

class MyBestText extends StatelessWidget {
  const MyBestText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(children: [
            TextSpan(
              text: 'Find\n',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextSpan(
              text: 'best place',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            TextSpan(
              text: ' nearby',
              style: TextStyle(
                fontSize: 30.0,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
