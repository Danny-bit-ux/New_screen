import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/home_screen.dart';
import 'package:flutter_screen/components/screens/screen_2.dart';
import 'package:flutter_screen/components/screens/screen_3.dart';
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
      height: 75,
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.book_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyScreenTwo();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyScreenThree();
                  },
                ),
              );
            },
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
