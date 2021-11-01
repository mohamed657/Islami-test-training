import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset('assets/image/headofseb7a.png')),
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
                                Image.asset('assets/image/bodyofseb7a.png'))),
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'عدد التسبيحات ',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFC7B295),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(20),
            child: Text('$Number_Tasbeh'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(5),
            child: Text(
              '${tasbeh_String[index]}',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void onPressed_tasbeh() {
    if (Number_Tasbeh <= 33) {
      Number_Tasbeh++;
    }
    if (Number_Tasbeh == 33 && index <= 3) {
      Number_Tasbeh = 0;
      index++;
    }
    if (index == 3) {
      index = 0;
    }
    rotateValue += 2;
    tasbeh_String[index];
    setState(() {});
  }
}
