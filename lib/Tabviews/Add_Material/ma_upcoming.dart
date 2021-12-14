import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

class MaUpcoming extends StatelessWidget {
  const MaUpcoming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetUpcoming(
            imgUrl: Images.sand,
            text1: "House 101 block A, Society",
            text2: " (Upcoming)",
            text3: "30 Trolly",
            colors1: AppColors.darkblue),
        WidgetUpcoming(
            imgUrl: Images.cement,
            text1: "House 101 block A, Society",
            text2: " (Upcoming)",
            text3: "30 Packet",
            colors1: AppColors.darkblue),
        WidgetUpcoming(
            imgUrl: Images.pipe,
            text1: "House 101 block A,ABC Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors1: AppColors.darkblue),
        WidgetUpcoming(
            imgUrl: Images.steel,
            text1: "House 101 block A,ABC Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors1: AppColors.darkblue),
        WidgetUpcoming(
            imgUrl: Images.brick,
            text1: "House 101 block A,ABC Society",
            text2: " (Upcoming)",
            text3: "300 Piece",
            colors1: AppColors.darkblue),
        WidgetUpcoming(
            imgUrl: Images.wood,
            text1: "House 101 block A, Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors1: AppColors.darkblue),
      ],
    );
  }
}

// ignore: must_be_immutable
class WidgetUpcoming extends StatelessWidget {
  final imgUrl;
  String text1;
  String text2;
  String text3;
  final colors1;

  WidgetUpcoming({
    Key? key,
    this.imgUrl,
    this.colors1,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

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
              Image(image: AssetImage(imgUrl), width:47 , height: 47,),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(text1, style: TextStyle(fontSize: 10)),
                      Text(text2,
                          style: TextStyle(fontSize: 10, color: colors1))
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
              Text("cost:10K", style: TextStyle(fontSize: 10, color: colors1))
            ],
          ),
        ],
      ),
    );
  }
}
