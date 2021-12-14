import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/listActWidget.dart';

class DelayActivity extends StatelessWidget {
  const DelayActivity({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            ///////////////////////////////////////////////////////////////////////////////////

            ListActWidget(
              ImgUrl: Images.home_7,
              status: 'Delayed',
              statusColor: AppColors.redcolor,
            ),
            ListActWidget(
              ImgUrl: Images.home_7,
              status: 'Delayed',
              statusColor: AppColors.redcolor,
            ),
            ListActWidget(
              ImgUrl: Images.home_7,
              status: 'Delayed',
              statusColor: AppColors.redcolor,
            ),
            ListActWidget(
              ImgUrl: Images.home_7,
              status: 'Delayed',
              statusColor: AppColors.redcolor,
            ),
            ListActWidget(
              ImgUrl: Images.home_7,
              status: 'Delayed',
              statusColor: AppColors.redcolor,
            ),
          ],
        ),
      ),
    );
  }
}
