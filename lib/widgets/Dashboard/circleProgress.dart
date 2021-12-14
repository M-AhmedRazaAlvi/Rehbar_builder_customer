import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircleProgress extends StatelessWidget {
  
 final String percentage ;
 final double linepercent ;

  const CircleProgress ({Key? key, required this.percentage, required this.linepercent}) : super(key: key);
  
  


  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50.0,
      lineWidth: 4.0,
      animation: true,
      percent: linepercent,
      center: new Text(
        percentage,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Color(0xff3375CA),
    );
  }
}
