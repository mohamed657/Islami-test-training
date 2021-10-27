import 'package:flutter/material.dart';
import 'package:untitled/hadeth/hadethTab.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/QuranTab.dart';
import 'package:untitled/radio/radioTab.dart';
import 'package:untitled/tasbeh/tasbehTab.dart';

class HomeScrean extends StatefulWidget {
  static const String routeName = 'Home ';

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/image/main_backgraond.png'),
        Scaffold(
          appBar: AppBar(
            title: Text('islami'),
          ),
          /////////////////////////////////////////////////////////////
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.primaryColor),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/ic_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/hadeth.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/ic_sebha.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/radio.png')),
                    label: 'Quran'),
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
  ];
}
