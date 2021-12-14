import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

class ProOvDelayed extends StatelessWidget {
  ProOvDelayed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProdDelayedWidget(
          imgUrl1: Images.bg_Activity_Digging,
          text1: "House 101 Block A, Society",
          text2: " (Pending)",
          text3: "30 Trolly",
          colors2: Colors.red,
        ),
        ProdDelayedWidget(
          imgUrl1: Images.bg_Activity_Cement,
          text1: "House 101 Block A, Society",
          text2: " (Pending)",
          text3: "30 Packet",
          colors2: Colors.red,
        ),
        ProdDelayedWidget(
          imgUrl1: Images.activity_Pipeline,
          text1: "House 101 Block A, ABC Society",
          text2: " (Pending)",
          text3: "30 Piece",
          colors2: Colors.red,
        ),
        ProdDelayedWidget(
          imgUrl1: Images.activity_pipe,
          text1: "House 101 Block A, ABC Society",
          text2: " (Pending)",
          text3: "30 Piece",
          colors2: Colors.red,
        ),
        ProdDelayedWidget(
          imgUrl1: Images.activity_Material,
          text1: "House 101 Block A, ABC Society",
          text2: " (Pending)",
          text3: "300 Piece",
          colors2: Colors.red,
        ),
        ProdDelayedWidget(
          imgUrl1: Images.activity_wood,
          text1: "House 101 Block A, ABC Society",
          text2: " (Pending)",
          text3: "30 Piece",
          colors2: Colors.red,
        ),
      ],
    );
  }
}

class ProdDelayedWidget extends StatelessWidget {
  const ProdDelayedWidget({
    Key? key,
    required this.imgUrl1,
    required this.text1,
    required this.text2,
    required this.colors2,
    required this.text3,
  }) : super(key: key);

  final imgUrl1;
  final String text1;
  final String text2;
  final colors2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(imgUrl1)),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(text1, style: TextStyle(fontSize: 10)),
                      Text(text2,
                          style: TextStyle(fontSize: 10, color: colors2))
                    ],
                  ),
                  Text(text3, style: TextStyle(fontSize: 10))
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Oct 10,2020",
                  style: TextStyle(fontSize: 10, color: AppColors.textGrey)),
              Text("cost:10K", style: TextStyle(fontSize: 10, color: colors2))
            ],
          ),
        ],
      ),
    );
  }
}
