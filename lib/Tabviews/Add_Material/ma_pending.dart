import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Add_Material/ma_upcoming.dart';

import 'package:rehber_builders/utils/images.dart';

class MaPending extends StatefulWidget {
  const MaPending({Key? key}) : super(key: key);

  @override
  _MaPendingState createState() => _MaPendingState();
}

class _MaPendingState extends State<MaPending> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetUpcoming(
            imgUrl: Images.sand,
            text1: "House 101 block A, Society",
            text2: " (Pending)",
            text3: "30 Trolly",
            colors1: Colors.red),
        WidgetUpcoming(
            imgUrl: Images.cement,
            text1: "House 101 block A, Society",
            text2: " (Pending)",
            text3: "30 Packet",
            colors1: Colors.red),
        WidgetUpcoming(
            imgUrl: Images.pipe,
            text1: "House 101 block A,ABC Society",
            text2: " (Pending)",
            text3: "30 Piece",
            colors1: Colors.red),
        WidgetUpcoming(
            imgUrl: Images.steel,
            text1: "House 101 block A,ABC Society",
            text2: " (Pending)",
            text3: "30 Piece",
            colors1: Colors.red),
        WidgetUpcoming(
            imgUrl: Images.brick,
            text1: "House 101 block A,ABC Society",
            text2: " (Pending)",
            text3: "300 Piece",
            colors1: Colors.red),
        WidgetUpcoming(
            imgUrl: Images.wood,
            text1: "House 101 block A,ABC Society",
            text2: " (Pending)",
            text3: "30 Piece",
            colors1: Colors.red),
      ],
    );
  }
}
