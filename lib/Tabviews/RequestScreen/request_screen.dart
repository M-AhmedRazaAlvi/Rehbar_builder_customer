import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/Tabviews/RequestScreen/all_request.dart';

import 'package:rehber_builders/widgets/AppBarWidget.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(
          title: 'Requests',
          context: context,
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
                            offset: Offset(1, 1)),
                      ]),
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
                      child: Text('Approved',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Pending',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Denied',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: TabBarView(
                  children: [
                    AllRequest(),
                    AllRequest(),
                    AllRequest(),
                    AllRequest(),
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
