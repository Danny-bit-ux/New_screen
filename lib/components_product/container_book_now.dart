import 'package:flutter/material.dart';

class ContainerBookNow extends StatelessWidget {
  const ContainerBookNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 350.0,
      height: 56.0,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'Book Now',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
