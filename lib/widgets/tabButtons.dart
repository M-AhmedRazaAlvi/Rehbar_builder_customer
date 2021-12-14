
import 'package:flutter/material.dart';

class TabButtons extends StatelessWidget {
  final String imgUrl;
  final String name;
  const TabButtons({
    Key? key,
    required this.imgUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 71.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
           AssetImage(imgUrl),
          ),
          Text(name),
        ],
      ),
    );
  }
}
