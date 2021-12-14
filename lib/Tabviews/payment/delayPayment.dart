import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/ListPayWidget.dart';

class DelayPayment extends StatelessWidget {
  const DelayPayment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "New",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delay',
                statuscolor: AppColors.redcolor),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delay',
                statuscolor: Colors.red),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delay',
                statuscolor: AppColors.redcolor),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delay',
                statuscolor: AppColors.redcolor),
            ListPayWidget(
                ImgUrl: Images.home_7,
                status: 'Delay',
                statuscolor: AppColors.redcolor),
          ],
        ),
      ),
    );
  }
}
