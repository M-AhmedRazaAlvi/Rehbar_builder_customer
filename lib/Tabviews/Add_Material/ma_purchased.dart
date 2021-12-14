import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_upcoming.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

class MaPurchased extends StatefulWidget {
  const MaPurchased({Key? key}) : super(key: key);

  @override
  _MaPurchasedState createState() => _MaPurchasedState();
}

class _MaPurchasedState extends State<MaPurchased> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetUpcoming(
            imgUrl: Images.sand,
            text1: "House 101 block A, Society",
            text2: "  (Purchased)",
            text3: "30 Trolly",
            colors1: AppColors.greenColor),
        WidgetUpcoming(
            imgUrl: Images.cement,
            text1: "House 101 block A, Society",
            text2: "  (Purchased)",
            text3: "30 Packet",
            colors1: AppColors.greenColor),
        WidgetUpcoming(
            imgUrl: Images.pipe,
            text1: "House 101 block A,ABC Society",
            text2: "  (Purchased)",
            text3: "30 Piece",
            colors1: AppColors.greenColor),
        WidgetUpcoming(
            imgUrl: Images.steel,
            text1: "House 101 block A,ABC Society",
            text2: "  (Purchased)",
            text3: "30 Piece",
            colors1: AppColors.greenColor),
        WidgetUpcoming(
            imgUrl: Images.brick,
            text1: "House 101 block A,ABC Society",
            text2: "  (Purchased)",
            text3: "300 Piece",
            colors1: AppColors.greenColor),
        WidgetUpcoming(
            imgUrl: Images.wood,
            text1: "House 101 block A,ABC Society",
            text2: "  (Purchased)",
            text3: "30 Piece",
            colors1: AppColors.greenColor),
      ],
    );
  }
}
