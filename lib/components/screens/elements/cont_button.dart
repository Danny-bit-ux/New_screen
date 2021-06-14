import 'package:flutter/material.dart';

class ContainerButtonInBlue extends StatefulWidget {
  final String name;
  final Icon icon;

  const ContainerButtonInBlue({Key key, this.name, this.icon})
      : super(key: key);

  @override
  _ContainerButtonInBlueState createState() => _ContainerButtonInBlueState();
}

int _value = 1;

class _ContainerButtonInBlueState extends State<ContainerButtonInBlue> {
  var index;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          buildContainerBut(
            name: 'Building',
            icon: Icons.build,
          ),
          buildContainerBut(
            name: 'Room',
            icon: Icons.house_rounded,
          ),
          buildContainerBut(
            name: 'House',
            icon: Icons.home_repair_service,
          ),
          buildContainerBut(
            name: 'App',
            icon: Icons.app_blocking_rounded,
          ),
          buildContainerBut(
            name: 'My Guitar',
            icon: Icons.gamepad_rounded,
          ),
        ],
      ),
    );
  }

  Container buildContainerBut({String name, IconData icon}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 100.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 1.0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon),
                Text(
                  name,
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
