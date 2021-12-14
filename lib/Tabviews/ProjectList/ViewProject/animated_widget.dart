import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/view_timeline.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';

class LabourCostWidget extends StatelessWidget {
  final colors1;
  const LabourCostWidget({
    Key? key,
    this.colors1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: colors1,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    //  padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Past days", style: TextStyle(fontSize: 12)),
                            SizedBox(height: 10),
                            Text("Estimated days",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("45",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.greenColor)),
                              SizedBox(height: 10),
                              Text("6",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey)),
                            ],
                          ),
                        ),
                      ],
                    )),
                Image.asset(IconImages.line_1),
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Labour Cost",
                                  style: TextStyle(fontSize: 12)),
                              SizedBox(height: 10),
                              Text("Material Cost",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$567",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey)),
                              SizedBox(height: 10),
                              Text(
                                "\$567",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textdarkGrey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          GreyStructure(text1: "Completed", colors1: AppColors.greenColor),
          GreyStructure(text1: "Pending", colors1: Colors.red),
          GreyStructure(text1: "Completed", colors1: AppColors.greenColor)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class GreyStructure extends StatelessWidget {
  String text1;
  final colors1;
  GreyStructure({Key? key, this.colors1, required this.text1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ViewTimeLine()));
      },
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.05,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text("Grey Structure"),
                    SizedBox(width: 5),
                    Text("(2/5)", style: TextStyle(fontSize: 10))
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text("Status", style: TextStyle(fontSize: 12)),
                    SizedBox(width: 10),
                    Text(
                      text1,
                      style: TextStyle(color: colors1),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Nov 2,2020", style: TextStyle(fontSize: 10)),
                SizedBox(height: 6),
                Text("Oct 2,2020", style: TextStyle(fontSize: 10)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PhasesColor extends StatelessWidget {
  String text1;
  final colors1;
  final colors2;
  final borderRadius1;

  PhasesColor({
    Key? key,
    this.colors1,
    this.colors2,
    required this.text1,
    this.borderRadius1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: colors1, borderRadius: borderRadius1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(child: Image.asset(Images.home_6)),
                  SizedBox(width: 4),
                  Text(
                    "Phase Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "(3/5)",
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.more_vert),
                  SizedBox(height: 8),
                  Text("Nov 2,2020", style: TextStyle(fontSize: 12))
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text("Status", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 15),
                      Text(
                        text1,
                        style: TextStyle(color: colors2),
                      ),
                    ],
                  ),
                ),
                Text("Oct 2,2020", style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
