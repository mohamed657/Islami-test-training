import 'package:flutter/material.dart';
import 'package:untitled/quran/SuraDetailsWidget.dart';

class SuraNameWidget extends StatelessWidget {
  String SuraName;
  int index;

  SuraNameWidget(this.index, this.SuraName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsWidget.routeName,
            arguments: SuraDetailsArguments(SuraName, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          SuraName,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
