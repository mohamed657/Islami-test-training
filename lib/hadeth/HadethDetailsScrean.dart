import 'package:flutter/material.dart';
import 'package:untitled/hadeth/hadethTab.dart';

class HadethDetailsScrean extends StatelessWidget {
  static const String routeName = 'Deatails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethItem;
    return Stack(children: [
      Image.asset(
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: SingleChildScrollView(
            child: Text(
              args.Content,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
