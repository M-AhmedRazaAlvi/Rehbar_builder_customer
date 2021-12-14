import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/RequestScreen/all_request.dart';

import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/search_widget.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'Appointments',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(children: [
            Column(
              children: [
                SearchWidget(),
                ///////////////////////////////////////////////////////////////////////////////////
                Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text("New",
                        style: TextStyle(fontWeight: FontWeight.bold))),

                JohnWidget(
                  imgUrl: Images.boy1_image,
                  navstate: false,
                ),
                JohnWidget(
                  imgUrl: Images.boy3_image,
                  navstate: false,
                ),
                Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "2 Days Ago",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                JohnWidget(
                  imgUrl: Images.boy1_image,
                  navstate: false,
                ),
                JohnWidget(
                  imgUrl: Images.boy3_image,
                  navstate: false,
                ),
                JohnWidget(
                  imgUrl: Images.boy1_image,
                  navstate: false,
                ),
                JohnWidget(
                  imgUrl: Images.boy3_image,
                  navstate: false,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
