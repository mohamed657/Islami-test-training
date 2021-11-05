import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/VersesWidget.dart';

class SuraDetailsWidget extends StatefulWidget {
  static const String routeName = 'details';

  @override
  State<SuraDetailsWidget> createState() => _SuraDetailsWidgetState();
}

class _SuraDetailsWidgetState extends State<SuraDetailsWidget> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    var args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArguments;
    if (ayat.isEmpty) readSura(args.index);
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
          title: Text(args.Name),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color:provider.isDarkMode()?
                MyThemeData.primaryColorDark:
                Colors.white,

                borderRadius: BorderRadius.circular(24)),
            child: ayat.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return VersesWidget(ayat[index], index);
                    },
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        height: 1,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                      );
                    },
                    itemCount: ayat.length)),
      ),
    ]);
  }

  void readSura(int index) async {
    String filleName = 'assets/filles/${index + 1}.txt';
    String fileContent = await rootBundle.loadString(filleName);
    List<String> Verses = fileContent.split('\n');
    ayat = Verses;
    setState(() {});
  }
}

class SuraDetailsArguments {
  String Name;
  int index;

  SuraDetailsArguments(this.Name, this.index);
}
