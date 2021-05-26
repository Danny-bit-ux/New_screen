import 'package:flutter/material.dart';

class RowJohnSmith extends StatelessWidget {
  const RowJohnSmith({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
              ),
            ],
          ),
          // child: ,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'Owner\n',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w100),
            ),
            TextSpan(
              text: 'John Smith Doe',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Icon(
            Icons.message,
            color: Colors.grey[600],
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
