import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/ViewProject/animated_widget.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';

class ProTimeline extends StatefulWidget {
  const ProTimeline({
    Key? key,
  }) : super(key: key);

  @override
  _ProTimelineState createState() => _ProTimelineState();
}

class _ProTimelineState extends State<ProTimeline> {
  bool selected = true;
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black26))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total days",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text("Past days", style: TextStyle(fontSize: 12)),
                              Text("Estimated days",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "106",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textdarkGrey),
                              ),
                              Text("45",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.greenColor)),
                              Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textdarkGrey),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Image.asset(IconImages.line1),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Labour Cost",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text("Material Cost",
                                    style: TextStyle(fontSize: 12)),
                                Text(
                                  "",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$567",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey),
                                ),
                                Text(
                                  "\$567",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey),
                                ),
                                Text(
                                  "",
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Phases",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    Text("(6)", style: TextStyle(fontSize: 11))
                  ],
                )),
            AnimatedWidget(context),
            AnimatedWidget1(context),
            AnimatedWidget2(context),
            AnimatedWidget3(context),
          ],
        ),
      ),
    );
  }

// ignore: non_constant_identifier_names
  Column AnimatedWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.9,
                height: selected
                    ? MediaQuery.of(context).size.height * 0.12
                    : MediaQuery.of(context).size.height * 0.48,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: Duration(milliseconds: 800),
                child: selected
                    ? PhasesColor(
                        borderRadius1: BorderRadius.circular(10),
                        colors1: Colors.grey[200],
                        text1: "Completed",
                        colors2: AppColors.greenColor)
                    : Column(
                        children: [
                          PhasesColor(
                              borderRadius1: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              colors1: Colors.grey[200],
                              text1: "Completed",
                              colors2: AppColors.greenColor),
                          LabourCostWidget(colors1: Colors.grey[200]),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column AnimatedWidget1(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected1 = !selected1;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected1
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.9,
                height: selected1
                    ? MediaQuery.of(context).size.height * 0.12
                    : MediaQuery.of(context).size.height * 0.48,
                alignment: selected1
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: Duration(milliseconds: 800),
                child: selected1
                    ? PhasesColor(
                        borderRadius1: BorderRadius.circular(10),
                        colors1: Color(0xffD7E4EF),
                        text1: "On Going",
                        colors2: AppColors.darkblue)
                    : Column(
                        children: [
                          PhasesColor(
                              borderRadius1: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              colors1: Color(0xffD7E4EF),
                              text1: "On Going",
                              colors2: AppColors.darkblue),
                          LabourCostWidget(colors1: Color(0xffD7E4EF)),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column AnimatedWidget2(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected2 = !selected2;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected2
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.9,
                height: selected2
                    ? MediaQuery.of(context).size.height * 0.12
                    : MediaQuery.of(context).size.height * 0.48,
                alignment: selected2
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: Duration(milliseconds: 800),
                child: selected2
                    ? PhasesColor(
                        borderRadius1: BorderRadius.circular(10),
                        colors1: Color(0xffD7F0E0),
                        text1: "Completed",
                        colors2: AppColors.greenColor)
                    : Column(
                        children: [
                          PhasesColor(
                              borderRadius1: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              colors1: Color(0xffD7F0E0),
                              text1: "Completed",
                              colors2: AppColors.greenColor),
                          LabourCostWidget(colors1: Color(0xffD7F0E0)),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column AnimatedWidget3(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected3 = !selected3;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected3
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.9,
                height: selected3
                    ? MediaQuery.of(context).size.height * 0.12
                    : MediaQuery.of(context).size.height * 0.48,
                alignment: selected3
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: Duration(milliseconds: 800),
                child: selected3
                    ? PhasesColor(
                        borderRadius1: BorderRadius.circular(10),
                        colors1: Color(0xffF5D0D0),
                        text1: "Delayed",
                        colors2: AppColors.redcolor)
                    : Column(
                        children: [
                          PhasesColor(
                              borderRadius1: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              colors1: Color(0xffF5D0D0),
                              text1: "Delayed",
                              colors2: AppColors.redcolor),
                          LabourCostWidget(colors1: Color(0xffF5D0D0)),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
