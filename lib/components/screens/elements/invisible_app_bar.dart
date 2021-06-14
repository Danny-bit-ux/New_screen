import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screen/components/screens/profile_screen.dart';

import '../../../constants.dart';

class InvisibleAppBar extends StatelessWidget implements PreferredSize {
  final Icon icon;
  final String name;
  const InvisibleAppBar({
    Key key,
    this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildContainer(
            image: Image.asset(
              "asset/images/image.jpg",
              fit: BoxFit.cover,
            ),
            tap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
          ),
          buildRichText(
            name: 'Jim Carey',
          ),
          buildIconContainer(
            icon: Icon(Icons.bookmark_border),
            tap: () {},
          ),
        ],
      ),
    );
  }

  Container buildIconContainer({Icon icon, Null Function() tap}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 15),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: InkWell(
          onTap: tap, borderRadius: BorderRadius.circular(16), child: icon),
    );
  }

  RichText buildRichText({String name}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hi,\n',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

  Container buildContainer({Image image, Null Function() tap}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 15),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: tap,
        child: image,
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
