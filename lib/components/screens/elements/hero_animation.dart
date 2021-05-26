import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  HeroAnimation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  Color color;

  Widget _smallImage(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }

  Widget _bigImage(Color color) {
    return Container(
      width: 300,
      height: 300,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    var index;
    return ListTile(
      leading: GestureDetector(
        child: Hero(
          tag: index.toString(),
          child: _smallImage(color),
        ),
        onTap: () => _fullImagePage(context, color, index.toString()),
      ),
    );
  }

  void _fullImagePage(BuildContext context, Color color, String tag) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (ctx) => Scaffold(
                appBar: AppBar(
                  title: Text('Big Image'),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: tag,
                        child: _bigImage(color),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
