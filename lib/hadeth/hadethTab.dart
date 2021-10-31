import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import 'HadethNameWidget.dart';

class hadethTab extends StatefulWidget {
  @override
  State<hadethTab> createState() => _hadethTabState();
}

class _hadethTabState extends State<hadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadethItems.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/image/headhadeth.png'),
        ),
        Column(
          children: [
            Divider(
              height: 1,
              color: MyThemeData.primaryColor,
              thickness: 1,
            ),
            Text(
              'اسم الحديث ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Divider(
              height: 1,
              color: MyThemeData.primaryColor,
              thickness: 1,
            ),
          ],
        ),
        Expanded(
            flex: 3,
            child: allHadethItems.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return HadethNameWidget(allHadethItems[index]);
                    },
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        height: 1,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                      );
                    },
                    itemCount: allHadethItems.length))
      ],
    );
  }

  List<HadethItem> allHadethItems = [];

  void loadHadethFile() async {
    List<HadethItem> allHadethData = [];
    String fileContent =
        await rootBundle.loadString('assets/filles/ahadeth.txt');
    List<String> AllAhadeth = fileContent.split('#\r\n');

    for (var i = 0; i < AllAhadeth.length; i++) {
      List<String> singleHadethContent = AllAhadeth[i].split('\n');
      String title = singleHadethContent[0];
      String content = '';

      for (var j = 1; j < singleHadethContent.length; j++) {
        content += singleHadethContent[j] + '';
      }

      HadethItem item = HadethItem(title, content);
      allHadethData.add(item);
    }

    allHadethItems = allHadethData;
    setState(() {});
  }
}

class HadethItem {
  String title;
  String Content;

  HadethItem(this.title, this.Content);
}
