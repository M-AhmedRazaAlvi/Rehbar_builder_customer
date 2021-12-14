import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Activities/ac_completed.dart';
import 'package:rehber_builders/Tabviews/Activities/ac_delayed.dart';
import 'package:rehber_builders/Tabviews/Activities/ac_upcoming.dart';

class DelayedActivity extends StatefulWidget {
  const DelayedActivity({Key? key}) : super(key: key);

  @override
  _DelayedActivityState createState() => _DelayedActivityState();
}

class _DelayedActivityState extends State<DelayedActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text(
            'Activity',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 38.0,
                width: 365.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffEEEEEE)),
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
                      child: Text('Delayed', style: TextStyle(fontSize: 12)),
                    ),
                    Tab(
                      child: Text('Upcoming', style: TextStyle(fontSize: 12)),
                    ),
                    Tab(
                      child: Text('Completed', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: TabBarView(
                  children: [
                    Ac_Delayed(),
                    AcUpcoming(),
                    AcCompleted(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
