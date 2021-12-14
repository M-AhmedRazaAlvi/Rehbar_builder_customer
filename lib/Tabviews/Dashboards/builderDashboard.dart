import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/menu.dart';

import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/Dashboard/DashboardContainer.dart';
import 'package:rehber_builders/widgets/Dashboard/ListContainer.dart';

import 'package:rehber_builders/widgets/Dashboard/circleProgress.dart';

import 'package:rehber_builders/widgets/Dashboard/topBar.dart';

class BuilderDashboard extends StatefulWidget {
  const BuilderDashboard({Key? key}) : super(key: key);

  @override
  _BuilderDashboardState createState() => _BuilderDashboardState();
}

class _BuilderDashboardState extends State<BuilderDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      key: _globalKey,
      drawer: Drawer(
        child: Menu(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            TopBar(globalKey: _globalKey),
            SizedBox(
              height: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // request container
                  DashBoardContainer(
                    colorContainer: Color(0xffA6D8DA),
                    containerName: 'Request',
                    number: '4',
                    text: 'Today',
                    imgUrl: IconImages.edit2,
                    numbercolor: Color(0xff2CB7BD),
                  ),
                  // apointment container
                  DashBoardContainer(
                    colorContainer: Color(0xffEB9D9D),
                    containerName: 'Appointment',
                    number: '4',
                    text: 'Pending',
                    imgUrl: IconImages.calander1,
                    numbercolor: Color(0xffDA5757),
                  ),
                ],
              ),
            ),

            // list in dashboard
            // container 1
            ListContainer(
                containerName: 'Payments', imgUrl: IconImages.payement),

            ///////////////// container 2//////////////////////
            SizedBox(height: 8),
            ListContainer(
                containerName: 'Activity', imgUrl: IconImages.activity),
            // container 3
            SizedBox(
              height: 8,
            ),
            ListContainer(
              containerName: 'Product to Buy',
              imgUrl: IconImages.pdt_to_buy1,
            ),

            SizedBox(height: size.height * 0.05),
            /////////////////////////// Achievement Box ////////////////////////////
            Container(
              height: size.height * 0.28,
              width: size.width * 0.883,
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Achivement',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        )),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleProgress(percentage: '56%', linepercent: 0.7),
                            Text(
                              'Payments',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleProgress(percentage: '37%', linepercent: 0.3),
                            Text(
                              'Projects',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleProgress(percentage: '100%', linepercent: 1),
                            Text(
                              'Material',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Completed Projects\t\t',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              TextSpan(
                                  text: '34',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff62DD8C),
                                  )),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Active Projects\t\t',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              TextSpan(
                                  text: '4',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4A8FCE),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Cancelled Projects\t\t',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                            TextSpan(
                                text: '2',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffD55656),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              height: size.height * 0.5,
              width: size.width * 0.883,
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Activity',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text('Increase by 23% from\nthe last month',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1A548A)))),
                      ],
                    ),
                  ),
                  Image.asset(Images.graph, fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(height: size.height),
          ],
        ),
      ),
    );
  }
}
