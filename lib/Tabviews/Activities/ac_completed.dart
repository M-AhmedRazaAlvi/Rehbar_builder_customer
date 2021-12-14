import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/images.dart';

import 'ac_delayed.dart';

class AcCompleted extends StatefulWidget {
  const AcCompleted({Key? key}) : super(key: key);

  @override
  _AcCompletedState createState() => _AcCompletedState();
}

class _AcCompletedState extends State<AcCompleted> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HouseStatus(
              imgUrl: Images.bg_Activity_Digging,
              text1: "House 101 Block A, Society",
              text2: "Digging",
              text3: "(Completed)",
              colors2: Colors.green),
          HouseStatus(
            imgUrl: Images.bg_Activity_Cement,
            text1: "House 101 Block A, Society",
            text2: "Cement",
            text3: "(Completed)",
            colors2: Colors.green,
          ),
          HouseStatus(
              imgUrl: Images.activity_Pipeline,
              text1: "House 101 Block A, ABC Society",
              text2: "Pipeline",
              text3: "(Completed)",
              colors2: Colors.green),
          HouseStatus(
              imgUrl: Images.activity_pipe,
              text1: "House 101 Block A, ABC Society",
              text2: "Steel(iron)",
              text3: "(Completed)",
              colors2: Colors.green),
          HouseStatus(
              imgUrl: Images.activity_Material,
              text1: "House 101 Block A, ABC Society",
              text2: "Digging",
              text3: "(Completed)",
              colors2: Colors.green),
          HouseStatus(
              imgUrl: Images.activity_wood,
              text1: "House 101 Block A, ABC Society",
              text2: "Wood",
              text3: "(Completed)",
              colors2: Colors.green),
        ],
      ),
    );
  }
}
