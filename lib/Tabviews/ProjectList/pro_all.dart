import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/ViewProject/view_project.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

class ProjectAll extends StatelessWidget {
  const ProjectAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            ProjectDetails(
                imgUrl: Images.home_7,
                text1: " (Commercial)",
                text2: "Completed",
                text3: "Total \$234",
                colors1: AppColors.greenColor),
            ProjectDetails(
                imgUrl: Images.home_6,
                text1: " (Non-Commercial)",
                text2: "Completed",
                text3: "Total \$234",
                colors1: AppColors.greenColor),
            ProjectDetails(
                imgUrl: Images.home_5,
                text1: "",
                text2: "Cancelled",
                text3: "",
                colors1: Colors.red),
            ProjectDetails(
                imgUrl: Images.home_4,
                text1: " (Commercial)",
                text2: "Cancelled",
                text3: "",
                colors1: Colors.red),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ViewProject()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                foregroundColor: Colors.transparent,
                                child: Image.asset(Images.home_3)),
                            Container(
                              margin: EdgeInsets.only(left: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text("Project Name",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(" (Commercial)",
                                          style: TextStyle(fontSize: 11))
                                    ],
                                  ),
                                  Text("John Doe | Lahore",
                                      style: TextStyle(fontSize: 11)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Icon(Icons.more_vert)),
                            Text("Total \$2134",
                                style: TextStyle(
                                    fontSize: 12, color: AppColors.darkblue)),
                          ],
                        )
                      ],
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black26))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text("Status",
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                                SizedBox(width: 15),
                                Text("On Going",
                                    style:
                                        TextStyle(color: AppColors.darkblue)),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("left \$234",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12)),
                              Text("Oct 2,2020",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ProjectDetails(
                imgUrl: Images.home_2,
                text1: "",
                text2: "Pending",
                text3: "",
                colors1: Colors.black),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ProjectDetails extends StatelessWidget {
  final imgUrl;
  String text1;
  String text2;
  String text3;
  final colors1;

  ProjectDetails({
    Key? key,
    this.imgUrl,
    this.colors1,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ViewProject()));
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        foregroundColor: Colors.transparent,
                        child: Image.asset(imgUrl)),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Project Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text(text1, style: TextStyle(fontSize: 11))
                            ],
                          ),
                          Text("John Doe | Lahore",
                              style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.more_vert)
              ],
            ),
            Container(
              // margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black26))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("Status",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        SizedBox(width: 15),
                        Text(text2, style: TextStyle(color: colors1)),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(text3,
                          style: TextStyle(
                              fontSize: 12, color: AppColors.darkblue)),
                      Text("Oct 2,2020", style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
