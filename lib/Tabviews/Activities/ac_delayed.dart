import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

// ignore: camel_case_types
class Ac_Delayed extends StatelessWidget {
  const Ac_Delayed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HouseStatus(
            imgUrl: Images.bg_Activity_Digging,
            text1: "House 101 Block A, Society",
            text2: "Digging",
            text3: "(Delayed)",
            colors2: Colors.red,
          ),
          HouseStatus(
              imgUrl: Images.bg_Activity_Cement,
              text1: "House 101 Block A, Society",
              text2: "Cement",
              text3: "(Delayed)",
              colors2: Colors.red),
          HouseStatus(
              imgUrl: Images.activity_Pipeline,
              text1: "House 101 Block A, ABC Society",
              text2: "Pipeline",
              text3: "(Delayed)",
              colors2: Colors.red),
          HouseStatus(
              imgUrl: Images.activity_pipe,
              text1: "House 101 Block A, ABC Society",
              text2: "Steel(iron)",
              text3: "(Delayed)",
              colors2: Colors.red),
          HouseStatus(
              imgUrl: Images.activity_Material,
              text1: "House 101 Block A, ABC Society",
              text2: "Digging",
              text3: "(Delayed)",
              colors2: Colors.red),
          HouseStatus(
              imgUrl: Images.activity_wood,
              text1: "House 101 Block A, ABC Society",
              text2: "Wood",
              text3: "(Delayed)",
              colors2: Colors.red),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class HouseStatus extends StatelessWidget {
  final imgUrl;
  String text1;
  String text2;
  String text3;

  final colors2;
  HouseStatus({
    Key? key,
    this.imgUrl,
    required this.text1,
    required this.text2,
    required this.text3,
    this.colors2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      // height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(imgUrl)),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1, style: TextStyle(fontSize: 12)),
                  Row(
                    children: [
                      Text("Activity:",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black54)),
                      Text(text2,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Status", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 10),
                      Text(
                        text3,
                        style: TextStyle(fontSize: 12, color: colors2),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Oct 10,2020",
              style: TextStyle(fontSize: 10, color: AppColors.textGrey),
            ),
          )
        ],
      ),
    );
  }
}
