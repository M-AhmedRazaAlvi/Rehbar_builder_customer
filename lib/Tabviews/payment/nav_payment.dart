import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/addPayment.dart';

import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/ListPayWidget.dart';
import 'package:rehber_builders/widgets/search_widget.dart';

// ignore: must_be_immutable
class NavPayment extends StatefulWidget {
  late bool landleadState;
  NavPayment({Key? key, required this.landleadState}) : super(key: key);

  @override
  _NavPaymentState createState() => _NavPaymentState();
}

class _NavPaymentState extends State<NavPayment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: widget.landleadState
            ? AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Text(
                  'Payments',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            : AppBarWidget(
                title: 'Payments',
                context: context,
              ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SearchWidget(),
              SizedBox(height: 20.0),
              Container(
                height: 38.0,
                width: 365.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffEEEEEE),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xff6A6A6A),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0.5,
                          offset: Offset(1, 1))
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Stack(clipBehavior: Clip.none, children: [
                        Positioned(
                            bottom: 3,
                            left: -10,
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            )),
                        Text('All',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold))
                      ]),
                    ),
                    Tab(
                        child: Text(
                      'Delayed',
                      style: TextStyle(fontSize: 12),
                    )),
                    Tab(
                        child: Text(
                      'Upcoming',
                      style: TextStyle(fontSize: 12),
                    )),
                    Tab(
                        child: Text(
                      'Paid',
                      style: TextStyle(fontSize: 12),
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 14,
                child: Container(
                  //color: Colors.grey,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: TabBarView(
                    children: [
                      AllPayment(),
                      AllPayment(),
                      AllPayment(),
                      AllPayment(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AllPayment extends StatelessWidget {
  const AllPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(clipBehavior: Clip.none, children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, bottom: 5),
              child: Text("New", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delayed',
                statuscolor: AppColors.redcolor),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Upcoming',
                statuscolor: AppColors.darkblue),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Paid',
                statuscolor: AppColors.greenColor),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, bottom: 5),
              child: Text("2 days ago",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delayed',
                statuscolor: AppColors.redcolor),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Upcoming',
                statuscolor: AppColors.darkblue),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Paid',
                statuscolor: AppColors.greenColor),
          ],
        ),
        Positioned(
            bottom: 5,
            right: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddPayment()));
              },
              child: CircleAvatar(
                radius: 15,
                child: Icon(Icons.add),
              ),
            )),
      ]),
    );
  }
}
