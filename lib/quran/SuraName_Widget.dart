import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/quran/SuraDetailsWidget.dart';

class SuraNameWidget extends StatelessWidget {
  String SuraName;
  int index;

  SuraNameWidget(this.index, this.SuraName);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsWidget.routeName,
            arguments: SuraDetailsArguments(SuraName, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          SuraName,
          style:Theme.of(context).primaryTextTheme.headline1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
