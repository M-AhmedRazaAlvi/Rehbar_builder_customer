import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Activities.dart';
import 'package:rehber_builders/Tabviews/Appointments/appointments.dart';
import 'package:rehber_builders/Tabviews/Product_Overdue/product_overdue.dart';
import 'package:rehber_builders/Tabviews/RequestScreen/request_screen.dart';
import 'package:rehber_builders/Tabviews/menu.dart';
import 'package:rehber_builders/Tabviews/payment/payment.dart';

import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/widgets/Dashboard/DashboardContainer.dart';
import 'package:rehber_builders/widgets/Dashboard/ListContainer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      key: _globalKey,
      drawer: Drawer(
        child: Menu(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // request container
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RequestScreen()));
                    },
                    child: DashBoardContainer(
                      colorContainer: Color(0xffA6D8DA),
                      containerName: 'Request',
                      number: '4',
                      text: 'Today',
                      imgUrl: IconImages.edit2,
                      numbercolor: Color(0xff2CB7BD),
                    ),
                  ),
                ),
                // apointment container
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Appointments()));
                    },
                    child: DashBoardContainer(
                      colorContainer: Color(0xffEB9D9D),
                      containerName: 'Appointment',
                      number: '4',
                      text: 'Pending',
                      imgUrl: IconImages.calander1,
                      numbercolor: Color(0xffDA5757),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // list in dashboard
          // container 1
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
            child: ListContainer(
              containerName: 'Payments',
              imgUrl: IconImages.payement,
            ),
          ),

          ///////////////// container 2//////////////////////
          SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ActivityScreen()));
            },
            child: ListContainer(
              containerName: 'Activity',
              imgUrl: IconImages.activity,
            ),
          ),
          // container 3
          SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductOverdue()));
            },
            child: ListContainer(
              containerName: 'Product to Buy',
              imgUrl: IconImages.pdt_to_buy1,
            ),
          ),

          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}
