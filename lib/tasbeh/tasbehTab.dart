import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class tasbehTab extends StatefulWidget {
  @override
  State<tasbehTab> createState() => _tasbehTabState();
}

class _tasbehTabState extends State<tasbehTab> {
  int Number_Tasbeh = 0;

  int index = 0;

  List<String> tasbeh_String = [
    'سبحان اللًه',
    'الحمدلله',
    ' لا اله الا اللًه',
    'اللًه اكبر',
  ];

  double rotateValue = 0.0;

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    provider.isDarkMode()?
                      'assets/image/headofseb7a_dark.png':
                      'assets/image/headofseb7a.png'
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 78),
                  child: Transform.rotate(
                    angle: rotateValue,
                    child: ClipOval(
                        child: InkWell(
                            onTap: () => onPressed_tasbeh(),
                            borderRadius: BorderRadius.circular(120),
                            splashColor: Colors.transparent,
                            child:
                                Image.asset(
                                  provider.isDarkMode()?
                                  'assets/image/bodyofseb7a_dark.png':
                                  'assets/image/bodyofseb7a.png'
                                )
                        )
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehnumber
          ,
            style:Theme.of(context).primaryTextTheme.headline1
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: provider.isDarkMode()?
                MyThemeData.primaryColorDark:
                Color(0xFFC7B295),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(20),
            child: Text('$Number_Tasbeh',
            style: TextStyle(
              color: provider.isDarkMode()?
                  Colors.white:
                  Colors.black
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: provider.isDarkMode()?
                MyThemeData.AccentColorDark:
                MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(5),
            child: Text(
              '${tasbeh_String[index]}',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color:provider.isDarkMode()?
              MyThemeData.primaryColorDark:
                      Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void onPressed_tasbeh() {
    Number_Tasbeh++;
    if (Number_Tasbeh % 33==0&&index<=3) {

      index++;
      if (index == 3) {
        index = 0;
      }
    }


    rotateValue += 2;
    tasbeh_String[index];
    setState(() {});
  }
}
