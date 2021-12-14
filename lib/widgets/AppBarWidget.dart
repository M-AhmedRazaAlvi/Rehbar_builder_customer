import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Key? key,
    required String title,
    required BuildContext context,
  }) : super(
          key: key,
          elevation: 0,
          titleSpacing: 8,
          backgroundColor: Colors.white,
          leading: leadingWidget(),
          title: Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        );
}

// ignore: camel_case_types
class leadingWidget extends StatelessWidget {
  const leadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lightGrey,
            ),
            child: Icon(Icons.arrow_back, color: AppColors.darkGrey)));
  }
}
