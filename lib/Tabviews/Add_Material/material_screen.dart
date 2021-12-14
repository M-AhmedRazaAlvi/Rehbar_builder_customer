import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_pending.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_product.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_purchased.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_upcoming.dart';

import 'package:rehber_builders/widgets/search_widget.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({Key? key}) : super(key: key);

  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            'Material',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SearchWidget(),
              Container(
                margin: EdgeInsets.only(top: 10),
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
                      child: Text('Product',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Pending',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Upcoming',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Purchased',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 14,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.64,
                  child: TabBarView(
                    children: [
                      MaProduct(),
                      MaPending(),
                      MaUpcoming(),
                      MaPurchased(),
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
