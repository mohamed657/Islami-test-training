import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/hadeth/hadethTab.dart';
import 'package:untitled/main.dart';

class HadethDetailsScrean extends StatelessWidget {
  static const String routeName = 'Deatails';

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethItem;
    return Stack(children: [
      Image.asset(
        provider.isDarkMode()?
        'assets/image/main_backgraonddark.png':
        'assets/image/main_backgraond.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: provider.isDarkMode()?
            MyThemeData.primaryColorDark:
            Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: SingleChildScrollView(
            child: Text(
              args.Content,
              style:Theme.of(context).primaryTextTheme.bodyText1 ,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
