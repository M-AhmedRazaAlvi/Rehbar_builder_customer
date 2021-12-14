import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

import 'package:rehber_builders/widgets/ListPayWidget.dart';

class UpcomingPayment extends StatelessWidget {
  const UpcomingPayment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: avoid_unnecessary_containers
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            ///////////////////////////////////////////////////////////////////////////////////

            ListPayWidget(ImgUrl: Images.home_7, status: 'Upcomming', statuscolor: AppColors.darkblue,),
            ListPayWidget(ImgUrl: Images.home_7, status: 'Upcomming', statuscolor: AppColors.darkblue,),
            ListPayWidget(ImgUrl: Images.home_7, status: 'Upcomming', statuscolor: AppColors.darkblue,),
            ListPayWidget(ImgUrl: Images.home_7, status: 'Upcomming', statuscolor: AppColors.darkblue,),
            ListPayWidget(ImgUrl: Images.home_7, status: 'Upcomming', statuscolor: AppColors.darkblue,),
            
            
            
          ],
        ),
      ),
    );
  }
}
