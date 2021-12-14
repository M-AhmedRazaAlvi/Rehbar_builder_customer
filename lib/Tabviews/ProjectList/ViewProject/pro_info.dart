import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/text_inputfield.dart';

class ProjectInfo extends StatefulWidget {
  const ProjectInfo({
    Key? key,
  }) : super(key: key);

  @override
  _ProjectInfoState createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(Images.home_1 ,width: 131, height: 131,),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 20),
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.person_outline, size: 18),
                                  SizedBox(width: 10),
                                  Text(
                                    "John Doe",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: 3),
                                  Image.asset(IconImages.atTheRate),
                                  SizedBox(width: 10),
                                  Text(
                                    "John Doe@gmail.com",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 3),
                                  Image.asset(IconImages.location),
                                  SizedBox(width: 10),
                                  Text(
                                    "G-block fairozpur road\nLahore, Pakistan ",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Project Details",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  textInputField(
                      text1: "Project Name", text2: "Enter project name"),
                  textInputField(text1: "ProjectId ", text2: "Enter projectId"),
                  textInputField(text1: "Customer", text2: "Enter customer name"),
                  textInputField(
                      text1: "Assign Builder", text2: "Enter builder  name"),
                  textInputField(
                      text1: "Project Type", text2: "Enter project type"),
                  textInputField(
                      text1: "Covered Area", text2: "Enter covered area(Sqft)"),
                  textInputField(text1: "Location", text2: "Enter location"),
                  textInputField(
                      text1: "Area Measurement",
                      text2: "Enter area measurement(5 sqft)"),
                  textInputField(text1: "Start date", text2: "Enter date"),
                  textInputField(text1: "End Date", text2: "Enter date"),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
