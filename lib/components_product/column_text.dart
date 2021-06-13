import 'package:flutter/material.dart';
import 'package:flutter_screen/components/information/information_card_product.dart';

import '../constants.dart';

Column buildColumn({name, york, comment, price}) {
  //String name, york, comment;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 15.0,
      ),
      Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: 12.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            york,
            style: kTextYork,
          ),
          SizedBox(
            height: 19.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 15.0,
                color: Colors.yellow[600],
              ),
              Text(
                comment,
                style: kTextYork,
              )
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 16,
          ),
          Text(
            '5   ',
            style: kTextNum,
          ),
          Icon(
            Icons.access_alarm,
            size: 16,
          ),
          Text(
            '2  ',
            style: kTextNum,
          ),
          Icon(
            Icons.accessibility,
            size: 16,
          ),
          Text(
            '1',
            style: kTextNum,
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        children: <Widget>[
          Text(
            price,
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Text(
            ' / mo',
            style: kTextYork,
          ),
        ],
      ),
      SizedBox(
        height: 50.0,
      ),
      Text(
        'Description:',
        style: kTextStyleNam,
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        iTextInfo,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal, fontSize: 15.0),
      ),
    ],
  );
}
