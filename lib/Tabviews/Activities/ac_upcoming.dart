import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Activities/ac_delayed.dart';

import 'package:rehber_builders/utils/images.dart';

class AcUpcoming extends StatefulWidget {
  const AcUpcoming({Key? key}) : super(key: key);

  @override
  _AcUpcomingState createState() => _AcUpcomingState();
}

class _AcUpcomingState extends State<AcUpcoming> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HouseStatus(
              imgUrl: Images.bg_Activity_Digging,
              text1: "House 101 Block A, Society",
              text2: "Digging",
              text3: "(Upcoming)",
              colors2: Colors.blue),
          HouseStatus(
            imgUrl: Images.bg_Activity_Cement,
            text1: "House 101 Block A, Society",
            text2: "Cement",
            text3: "(Upcoming)",
            colors2: Colors.blue,
          ),
          HouseStatus(
              imgUrl: Images.activity_Pipeline,
              text1: "House 101 Block A, ABC Society",
              text2: "Pipeline",
              text3: "(Upcoming)",
              colors2: Colors.blue),
          HouseStatus(
              imgUrl: Images.activity_pipe,
              text1: "House 101 Block A, ABC Society",
              text2: "Steel(iron)",
              text3: "(Upcoming)",
              colors2: Colors.blue),
          HouseStatus(
              imgUrl: Images.activity_Material,
              text1: "House 101 Block A, ABC Society",
              text2: "Digging",
              text3: "(Upcoming)",
              colors2: Colors.blue),
          HouseStatus(
              imgUrl: Images.activity_wood,
              text1: "House 101 Block A, ABC Society",
              text2: "Wood",
              text3: "(Upcoming)",
              colors2: Colors.blue),
        ],
      ),
    );
  }
}
