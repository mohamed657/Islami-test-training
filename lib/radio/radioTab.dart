import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/main.dart';

class radioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/radio_tab.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'اذاعة القرأن الكريم',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageIcon(
                AssetImage('assets/image/Icon metro-next-1.png'),
                color: provider.isDarkMode()?
                MyThemeData.AccentColorDark:
                MyThemeData.primaryColor,
              ),
              ImageIcon(
                AssetImage('assets/image/Icon awesome-play.png'),
                color: provider.isDarkMode()?
                MyThemeData.AccentColorDark:
                MyThemeData.primaryColor,
              ),
              ImageIcon(
                AssetImage('assets/image/Icon metro-next.png'),
                color: provider.isDarkMode()?
                MyThemeData.AccentColorDark:
                MyThemeData.primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
