import 'package:flutter/material.dart';

class InvisibleAppBar extends StatelessWidget {
  const InvisibleAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('asset/images/image.jpg'),
          ),
          RichText(
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
                  text: 'Jim Carey',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 60.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
