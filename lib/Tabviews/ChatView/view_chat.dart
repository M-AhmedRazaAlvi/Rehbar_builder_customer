import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';

class ViewChat extends StatefulWidget {
  ViewChat({Key? key}) : super(key: key);

  @override
  _ViewChatState createState() => _ViewChatState();
}

class _ViewChatState extends State<ViewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: 'Chat', context: context, ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(Images.profile_photo,
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                              bottom: 5,
                              right: 0,
                              child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: AppColors.greenColor))
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("john Doe",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 30, bottom: 5),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: AppColors.lightGrey,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                                child: Text(
                                    "opposed to using 'Content here, content here',\nmaking it look like readable English. Many\ndesktop publishing packages and web page ",
                                    style: TextStyle(fontSize: 12))),
                            Text("Oct 2,2020", style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: AppColors.Bgblue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Text(
                                "opposed to using 'Content here, content\nhere', making it look like readable English.\nMany desktop publishing packages and we\npage  ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white))),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 5),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: AppColors.Bgblue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                    "opposed to using 'Content here, content\nhere', making it look like readable English.\nMany desktop publishing packages and\nweb page opposed to using 'Content here,\ncontent here', making it look like readable\nEnglish. Many desktop publishing packages\nand web page",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white))),
                            Text("Oct 2,2020", style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(IconImages.attach),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 12),
                                  hintText: 'Type something',
                                  suffixIcon:
                                      Icon(Icons.emoji_emotions_outlined),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(left: 15, top: 4))),
                        ),
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset(IconImages.vector),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
