import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String Name;
  int index;

  VersesWidget(this.Name, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        Name + '{${index + 1}}',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
