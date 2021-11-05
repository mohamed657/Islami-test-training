import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/hadeth/hadethTab.dart';

import 'HadethDetailsScrean.dart';

class HadethNameWidget extends StatelessWidget {
  HadethItem item;

  HadethNameWidget(this.item);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScrean.routeName,
            arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
          item.title,
          style:Theme.of(context).primaryTextTheme.headline1 ,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
