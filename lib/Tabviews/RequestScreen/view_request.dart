import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/text_inputfield.dart';

class ViewRequest extends StatefulWidget {
  const ViewRequest({Key? key}) : super(key: key);

  @override
  _ViewRequestState createState() => _ViewRequestState();
}

class _ViewRequestState extends State<ViewRequest> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'View Request',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      Images.profile_Boy,
                      height: 130,
                      width: 130,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 15),
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
                              Text("John Doe"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 3),
                              Image.asset(IconImages.atTheRate),
                              SizedBox(width: 10),
                              Text("John Doe@gmail.com"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 3),
                              Image.asset(IconImages.location),
                              SizedBox(width: 10),
                              Text("G-block fairozpur road\nLahore, Pakistan "),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Request Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    textInputField(
                        text1: "Project Address", text2: "Enter project name"),
                    textInputField(
                        text1: "Project Type", text2: "Enter project type"),
                    textInputField(
                        text1: "Plot Area", text2: "Enter area(5 sqft)"),
                    textInputField(
                        text1: "Contact", text2: "Enter contact no."),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        checkColor: Colors.white,
                        activeColor: Colors.black,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                            setState(() {
                              showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2025));
                            });
                          });
                        }),
                    Text(
                      "Schedule Request",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Decline",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: BoxDecoration(
                          color: AppColors.Bgblue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Approve",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
