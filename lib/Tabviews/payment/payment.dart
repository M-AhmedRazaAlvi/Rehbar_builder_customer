import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/Tabviews/payment/delayPayment.dart';
import 'package:rehber_builders/Tabviews/payment/paidPayment.dart';
import 'package:rehber_builders/Tabviews/payment/upcomingPayment.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/search_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBarWidget(
            title: 'Payment',
            context: context,
          ), // ignore: avoid_unnecessary_containers
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  SearchWidget(),
                  SizedBox(
                    height: 15.0,
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
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.5,
                              spreadRadius: 0.5,
                              offset: Offset(1, 1))
                        ],
                      ),
                      tabs: [
                        Tab(
                          text: 'Delayed',
                        ),
                        Tab(
                          child: Text('Upcomming'),
                        ),
                        Tab(
                          child: Text('Paid'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.76,
                    child: TabBarView(
                      children: [
                        DelayPayment(),
                        UpcomingPayment(),
                        PaidPayment(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          // bottomNavigationBar: const BottomWidgets(),
          ),
    );
  }
}
