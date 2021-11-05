import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'Home/HomeScrean.dart';
import 'hadeth/HadethDetailsScrean.dart';
import 'quran/SuraDetailsWidget.dart';

void main() {

  runApp( ChangeNotifierProvider(
    create: (buildContext){
      return AppConfigProvider();
    },
      child: MyApp()
  ));
}

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static const Color primaryColorDark = Color.fromARGB(255, 20, 26, 46);
  static const Color AccentColorDark = Color.fromARGB(255, 250, 204, 29);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: MyThemeData.primaryColor,
      primaryTextTheme: TextTheme(
          subtitle1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black

          ),
          headline1: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25
          ),
          bodyText1: TextStyle(

              fontSize: 18,
              color:Colors.black

          )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));
  static final ThemeData DarkTheme = ThemeData(
      primaryColor: MyThemeData.primaryColorDark,
      primaryTextTheme: TextTheme(
      subtitle1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
        color: Colors.white

        ),
        headline1: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25
        ),
        bodyText1: TextStyle(

            fontSize: 18,
            color:MyThemeData.AccentColorDark

        )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: MyThemeData.AccentColorDark, unselectedItemColor: Colors.white));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: provider.appTheme,

      locale: Locale(provider.appLanguage),
      routes: {
        HomeScrean.routeName: (context) => HomeScrean(),
        SuraDetailsWidget.routeName: (context) => SuraDetailsWidget(),
        HadethDetailsScrean.routeName: (context) => HadethDetailsScrean(),
      },
      initialRoute: HomeScrean.routeName,
    );
  }
}
