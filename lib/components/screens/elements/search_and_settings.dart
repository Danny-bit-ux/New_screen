import 'package:flutter/material.dart';
import 'package:flutter_screen/components_2/screen_1.dart';
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
            width: 300.0,
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
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.bottom,
              enabled: true,
              keyboardType: TextInputType.name,
              onChanged: (value) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintMaxLines: 3,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ImageScreen();
                  },
                ),
              );
            },
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
              child: Icon(Icons.settings),
            ),
          ),
        ),
      ],
    );
  }
}
