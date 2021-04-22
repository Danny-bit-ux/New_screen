import 'package:flutter/material.dart';
import 'package:flutter_screen/constants.dart';

class SearchBtnAndSettings extends StatelessWidget {
  const SearchBtnAndSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 320.0,
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
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
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
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
