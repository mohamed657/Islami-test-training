import 'package:flutter/material.dart';
import 'package:untitled/Home/HomeScrean.dart';

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
      ),
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
      ));
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
      },
      initialRoute: HomeScrean.routeName,
    );
  }
}
