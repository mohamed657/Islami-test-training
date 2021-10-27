import 'package:flutter/material.dart';
import 'package:untitled/HomeScrean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islame',
      routes: {
        HomeScrean.routeNam: (context) => HomeScrean(),
      },
      initialRoute: HomeScrean.routeNam,
    );
  }
}
