import 'package:flutter/material.dart';
import 'package:untitled/Home/HomeScrean.dart';

import 'hadeth/HadethDetailsScrean.dart';
import 'quran/SuraDetailsWidget.dart';

void main() => runApp(MyApp());

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: MyThemeData.primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.black));
  static final ThemeData DarkTheme = ThemeData(
      primaryColor: MyThemeData.primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.black));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,
      routes: {
        HomeScrean.routeName: (context) => HomeScrean(),
        SuraDetailsWidget.routeName: (context) => SuraDetailsWidget(),
        HadethDetailsScrean.routeName: (context) => HadethDetailsScrean(),
      },
      initialRoute: HomeScrean.routeName,
    );
  }
}
