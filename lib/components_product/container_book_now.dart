import 'package:flutter/material.dart';

class ContainerBookNow extends StatefulWidget {
  const ContainerBookNow({
    Key key,
  }) : super(key: key);

  @override
  _ContainerBookNowState createState() => _ContainerBookNowState();
}

var selected = [];

class _ContainerBookNowState extends State<ContainerBookNow> {
  Object index;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Container(
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
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onSelected: (bool value) {
        if (selected.contains(index)) {
          selected.remove(index);
        } else {
          selected.add(index);
        }
        setState(() {});
      },
      selected: selected.contains(index),
      selectedColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.white,
    );
  }
}
