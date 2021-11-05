import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/Settings/SettingsTab.dart';
import 'package:untitled/hadeth/hadethTab.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/QuranTab.dart';
import 'package:untitled/radio/radioTab.dart';
import 'package:untitled/tasbeh/tasbehTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScrean extends StatefulWidget {
  static const String routeName = 'Home ';

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.isDarkMode()?
          'assets/image/main_backgraonddark.png':
          'assets/image/main_backgraond.png',


          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          /////////////////////////////////////////////////////////////
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/ic_quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/ic_sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: Container(
            child: views[currentIndex],
          ),
        ),
      ],
    );
  }

  List<Widget> views = [
    QuranTab(),
    hadethTab(),
    tasbehTab(),
    radioTab(),
    SettingsTab(),
  ];
}
