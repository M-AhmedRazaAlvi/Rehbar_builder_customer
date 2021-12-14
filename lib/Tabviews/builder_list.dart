import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/search_widget.dart';

class BuilderList extends StatefulWidget {
  const BuilderList({Key? key}) : super(key: key);

  @override
  _BuilderListState createState() => _BuilderListState();
}

class _BuilderListState extends State<BuilderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: 'Builders List', context: context,),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(),

            ///////////////////////////////////////////////////////////////////////////////////
            BuilderAppoint(
                text1: "Builder Appointmented", colors1: AppColors.greenColor),
            BuilderAppoint(
                text1: "Appointment Builder", colors1: AppColors.darkblue),
            BuilderAppoint(
                text1: "Builder Appointmented", colors1: AppColors.greenColor),
            BuilderAppoint(
                text1: "Builder Appointmented", colors1: AppColors.greenColor),
            BuilderAppoint(
                text1: "Builder Appointmented", colors1: AppColors.greenColor),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BuilderAppoint extends StatelessWidget {
  String text1;
  dynamic colors1;
  BuilderAppoint({
    required this.text1,
    this.colors1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
          //color: Colors.grey,
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 35,
                  width: 35,
                  margin: EdgeInsets.only(bottom: 10),
                  child: CircleAvatar(
                    foregroundColor: Colors.transparent,
                      child: Image(image: AssetImage(Images.boy2_image)))),
              SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("John Doe | Lahore",
                      style: TextStyle(fontSize: 11, color: Colors.black54))
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PopupMenuButton(
                iconSize: 18,
                padding: EdgeInsets.only(left: 30),
                color: AppColors.lightGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black26))),
                          child: Row(
                            children: [
                              Icon(Icons.block_outlined, size: 18),
                              SizedBox(width: 10),
                              Text("Unappoint"),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.delete_outline, size: 18),
                            SizedBox(width: 10),
                            Text("Remove"),
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
              Text(text1, style: TextStyle(fontSize: 10, color: colors1)),
            ],
          )
        ],
      ),
    );
  }
}
