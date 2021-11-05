import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider/AppConfigProvider.dart';
import 'package:untitled/Settings/languageButtomSheet.dart';

import 'ThemeButtomSheet.dart';

class SettingsTab extends StatefulWidget{

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: (){
              ShowLangageButtomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage=='en'?'English':'العربية'),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.theme),
          InkWell(
            onTap: (){
              ShowThemeButtomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appTheme==ThemeMode.light?
                  AppLocalizations.of(context)!.light:
                  AppLocalizations.of(context)!.dark
                  ),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }

  void ShowLangageButtomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return LanguageButtomSheet();

    }
    );
  }

  void ShowThemeButtomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return ThemeButtomSheet();

    }
    );
  }
}
