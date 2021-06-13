import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Short by",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),
        )
      ],
    );
  }
}
