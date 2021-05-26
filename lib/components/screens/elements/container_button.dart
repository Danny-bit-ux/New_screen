import 'package:flutter/material.dart';

class MyBuilding extends StatelessWidget {
  const MyBuilding({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100.0,
        width: 80.0,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.build),
            Text(
              text,
              style: TextStyle(fontSize: 13.0),
            ),
          ],
        ),
      ),
    );
  }
}
