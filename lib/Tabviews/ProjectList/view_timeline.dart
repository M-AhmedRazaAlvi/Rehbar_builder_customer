import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';

import 'package:rehber_builders/widgets/text_inputfield.dart';

class ViewTimeLine extends StatefulWidget {
  const ViewTimeLine({Key? key}) : super(key: key);

  @override
  _ViewTimeLineState createState() => _ViewTimeLineState();
}

class _ViewTimeLineState extends State<ViewTimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'View Timeline',
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black26))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phase Total days",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text("Phase Past days",
                                    style: TextStyle(fontSize: 12)),
                                Text("Estimated days",
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "106",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("45",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.greenColor,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Image.asset(IconImages.line1),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Labour Cost",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text("Material Cost",
                                    style: TextStyle(fontSize: 12)),
                                Text(""),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$567",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$567",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textdarkGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(""),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, bottom: 15),
              child: Text(
                "Activity Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            textInputField(text1: "Activity Name", text2: "Enter name"),
            textInputField(text1: "Start Date ", text2: "Enter start date"),
            textInputField(text1: "End Date", text2: "Enter end date"),
            textInputField(text1: "Activity Status", text2: "Enter no."),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Photos",
                style: TextStyle(
                    color: AppColors.textdarkGrey, fontWeight: FontWeight.bold),
              ),
            ),
            ShowDiggingImages(),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Product",
                style: TextStyle(
                    color: AppColors.textdarkGrey, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widgetProduct(text: "Sand"),
                widgetProduct(text: "Brick"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class widgetProduct extends StatelessWidget {
  final String text;
  const widgetProduct({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xffD7F0E0), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status"),
              Text(
                "Purchased",
                style: TextStyle(color: AppColors.greenColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShowDiggingImages extends StatefulWidget {
  const ShowDiggingImages({
    Key? key,
  }) : super(key: key);
  @override
  _ShowDiggingImagesState createState() => _ShowDiggingImagesState();
}

class _ShowDiggingImagesState extends State<ShowDiggingImages> {
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    Images.digging_image,
    Images.digging_image,
    Images.digging_image,
    Images.digging_image,
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Stack(clipBehavior: Clip.none, children: [
                  Positioned(
                      top: -25,
                      right: 0,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.close,
                          color: Colors.black45,
                        ),
                      )),
                  Center(child: Text("Digging Images"))
                ]),
                content: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: <Widget>[
                        carouselSlider = CarouselSlider(
                          options: CarouselOptions(
                            height: 200,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            enlargeCenterPage: true,
                            //    onPageChanged: (index) {
                            //   setState(() {
                            //     _current = index;
                            //   });
                            // },
                            scrollDirection: Axis.horizontal,
                          ),
                          items: imgList.map((imgUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Image.asset(imgUrl, fit: BoxFit.fill),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: map<Widget>(imgList, (index, url) {
                              return Container(
                                width: 10.0,
                                height: 10.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Colors.redAccent
                                      : Colors.green,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 110,
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xffE6F3FF),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(IconImages.gallery),
              SizedBox(height: 6),
              Text("Click to view", style: TextStyle(fontSize: 10))
            ],
          ),
        ),
      ),
    );
  }
}
