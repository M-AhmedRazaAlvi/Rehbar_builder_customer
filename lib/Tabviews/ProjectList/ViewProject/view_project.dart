import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/ViewProject/pro_info.dart';
import 'package:rehber_builders/Tabviews/ProjectList/ViewProject/pro_payment.dart';
import 'package:rehber_builders/Tabviews/ProjectList/ViewProject/pro_timeline.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';

class ViewProject extends StatefulWidget {
  const ViewProject({Key? key}) : super(key: key);

  @override
  _ViewProjectState createState() => _ViewProjectState();
}

class _ViewProjectState extends State<ViewProject> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(
          title: 'View Project',
          context: context,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 38.0,
                width: 365.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffEEEEEE),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xff6A6A6A),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                          offset: Offset(1, 1))
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text('Info')),
                    ),
                    Tab(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Timeline')),
                    ),
                    Tab(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Payment')),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 14,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: [
                      ProjectInfo(),
                      ProTimeline(),
                      ProPayment(),
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
