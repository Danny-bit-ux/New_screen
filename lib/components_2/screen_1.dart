import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.green,
      ),
      body: Body2(),
    );
  }
}

class Body2 extends StatelessWidget {
  Body2({Key key}) : super(key: key);

  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: _listBuilder(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listBuilder() {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 500,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index % 10]],
            child: Text('Item $index'),
          );
        });
  }
}
