import 'package:flutter/material.dart';
import 'package:flutter_screen/components_settings/settings_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController) {
      return Container(
        color: Colors.white,
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Settings $index'),
          );
        }),
      );
    });
  }
}
