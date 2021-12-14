import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';

class GreyStructures extends StatefulWidget {
  const GreyStructures({Key? key}) : super(key: key);

  @override
  _GreyStructuresState createState() => _GreyStructuresState();
}

class _GreyStructuresState extends State<GreyStructures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    color: AppColors.bglightBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(IconImages.playarrow_left),
                    Row(
                      children: [
                        Text(
                          "Grey Structure",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            "(2/5)",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(IconImages.playarrow_right)
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    "Phase Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      RowPhasewidget(
                          text1: "Phase Name", text2: "Enter phase name"),
                      RowPhasewidget(
                          text1: "Start Date", text2: "Enter start date"),
                      RowPhasewidget(
                          text1: "End Date", text2: "Enter end Date"),
                    ],
                  ),
                  Column(
                    children: [
                      RowPhasewidget(text1: "Labour Cost", text2: "Enter cost"),
                      RowPhasewidget(
                          text1: "Phase Status", text2: "Enter status"),
                      RowPhasewidget(
                          text1: "Completed Days", text2: "Enter days"),
                    ],
                  ),
                ],
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Activities",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          color: AppColors.bglightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Digging",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 10),
                            child: Text(
                              "(18 days)",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.6,
                          // color: Colors.grey,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    child: Text("Start Date:",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                  Text(
                                    "Nov 3,2020",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    child: Text("End Date:",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                  Text("Nov 23,2020",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    child: Text("Completed Days:",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                  Text("56",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    child: Text("Dependent Activities:",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                  Text("4",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    child: Text("Status:",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                  Text("On Going",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                ShowDiggingImages(),
                                SizedBox(width: 8),
                                Container(
                                  width: 60,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Color(0xffE6F3FF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(IconImages.camera),
                                      SizedBox(height: 10),
                                      Text("Add",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            ShowMaterialDetails(),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.blue),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowMaterialDetails extends StatelessWidget {
  const ShowMaterialDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Stack(children: [
                AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Stack(clipBehavior: Clip.none, children: [
                    Positioned(
                        top: -35,
                        right: -10,
                        child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 17,
                            child: Icon(Icons.close, color: Colors.black45))),
                    Center(
                      child: Text(
                        "Material Details",
                        style: TextStyle(color: AppColors.darkblue),
                      ),
                    ),
                  ]),
                  content: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Product Name:"),
                              SizedBox(height: 1),
                              Text("Quality:"),
                              Text("Quantity:"),
                              Text("Arival time:"),
                              Text("Material Provider:"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Brick,Cement\nPipe,Sand",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("Premium",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("3000",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("10:30 AM",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("John",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )),
                  actions: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.blue),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 5, backgroundColor: Colors.grey)
                        ],
                      ),
                    )
                  ],
                ),
              ]);
            });
      },
      child: Container(
        width: 130,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffE6F3FF), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconImages.material),
            SizedBox(height: 10),
            Text("Material", style: TextStyle(fontSize: 12))
          ],
        ),
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
      child: Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xffE6F3FF), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconImages.gallery),
            SizedBox(height: 10),
            Text("Photos", style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    );
  }
}

class RowPhasewidget extends StatelessWidget {
  final String text1;
  final String text2;
  const RowPhasewidget({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          color: Color(0xffE5E5E5),
          border: Border(bottom: BorderSide(color: AppColors.textdarkGrey))),
      child: TextField(
        //controller: this._emailController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: text1,
          labelStyle: TextStyle(color: AppColors.textdarkGrey),
          hintText: text2,
          hintStyle: TextStyle(color: Colors.black38),
        ),
      ),
    );
  }
}
