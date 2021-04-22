import 'package:flutter/material.dart';
import 'package:flutter_screen/constants.dart';

class DuplexApartmentGuitar extends StatelessWidget {
  const DuplexApartmentGuitar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200.0,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 180.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                      Image.asset('asset/images/electric_guitar_PNG24177.png'),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Duplex Apartment\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Stockton, New Hampshire\n',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: '4.8',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " (256 Review's)\n",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(),
                      TextSpan(
                        text: '5   ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '2   ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '1\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(),
                      TextSpan(
                        text: '1500',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: kTextColor),
                      ),
                      TextSpan(
                        text: ' / mo',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200.0,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 180.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                      Image.asset('asset/images/electric_guitar_PNG24179.png'),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Duplex Apartment\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Stockton, New Hampshire\n',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: '4.8',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " (256 Review's)\n",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(),
                      TextSpan(
                        text: '5   ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '2   ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '1\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(),
                      TextSpan(
                        text: '1,300',
                        style: TextStyle(
                            color: kTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' / mo',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
