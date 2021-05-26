import 'package:flutter/material.dart';

import '../constants.dart';

Column buildColumn() {
  return Column(
    children: [
      Text(
        'Duplex Apartment',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
        textAlign: TextAlign.start,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Stockton, New Hampshire',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 12.0),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 15.0,
                color: Colors.yellow[600],
              ),
              Text(
                '(256 Review)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 16,
          ),
          Text(
            '5   ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.access_alarm,
            size: 16,
          ),
          Text(
            '2  ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.accessibility,
            size: 16,
          ),
          Text(
            '1',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Text(
            '\$1,500',
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Text(
            ' / mo',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
      Text(
        'Description:',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      Text(
        'The flat for rent provides the extract comfortable lifestyle that you have been looking for. Covers area as a whole the flat also has faculities that come along with this edifice.',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15.0),
      ),
    ],
  );
}
