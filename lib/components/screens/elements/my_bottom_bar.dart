import 'package:flutter/material.dart';
import 'package:flutter_screen/constants.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.book_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
