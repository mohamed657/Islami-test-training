import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class radioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/radio_tab.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'اذاعة القرأن الكريم',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageIcon(
                AssetImage('assets/image/Icon metro-next.png'),
                color: MyThemeData.primaryColor,
              ),
              ImageIcon(
                AssetImage('assets/image/Icon awesome-play.png'),
                color: MyThemeData.primaryColor,
              ),
              ImageIcon(
                AssetImage('assets/image/Icon metro-next-1.png'),
                color: MyThemeData.primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
