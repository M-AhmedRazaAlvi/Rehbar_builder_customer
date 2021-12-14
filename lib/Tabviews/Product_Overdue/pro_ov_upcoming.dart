import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Product_Overdue/pro_ov_delayed.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';

class ProOvUpcoming extends StatelessWidget {
  ProOvUpcoming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProdDelayedWidget(
            imgUrl1: Images.bg_Activity_Digging,
            text1: "House 101 Block A, Society",
            text2: " (Upcoming)",
            text3: "30 Trolly",
            colors2: AppColors.darkblue),
        ProdDelayedWidget(
            imgUrl1: Images.bg_Activity_Cement,
            text1: "House 101 Block A, Society",
            text2: " (Upcoming)",
            text3: "30 Packet",
            colors2: AppColors.darkblue),
        ProdDelayedWidget(
            imgUrl1: IconImages.activity_pipeline,
            text1: "House 101 Block A, ABC Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors2: AppColors.darkblue),
        ProdDelayedWidget(
            imgUrl1: IconImages.activity_pipe,
            text1: "House 101 Block A, ABC Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors2: AppColors.darkblue),
        ProdDelayedWidget(
            imgUrl1: IconImages.activity_Material,
            text1: "House 101 Block A, ABC Society",
            text2: " (Upcoming)",
            text3: "300 Piece",
            colors2: AppColors.darkblue),
        ProdDelayedWidget(
            imgUrl1: IconImages.activity_Wood,
            text1: "House 101 Block A, ABC Society",
            text2: " (Upcoming)",
            text3: "30 Piece",
            colors2: AppColors.darkblue),
      ],
    );
  }
}
