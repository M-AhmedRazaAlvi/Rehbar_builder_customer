import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/text_inputfield.dart';

class ViewAppointments extends StatefulWidget {
  const ViewAppointments({Key? key}) : super(key: key);

  @override
  _ViewAppointmentsState createState() => _ViewAppointmentsState();
}

class _ViewAppointmentsState extends State<ViewAppointments> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'View Appointment',
        context: context,
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Row(
      //     children: [
      //       Container(
      //           padding: EdgeInsets.all(10),
      //           decoration: BoxDecoration(
      //               color: Color(0xffF0F0F0),
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Icon(Icons.arrow_back, color: Colors.black)),
      //       SizedBox(width: 20),
      //       Text("View Appointment",
      //           style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold)),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      Images.profile_Boy,
                      width: 130,
                      height: 130,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      width: MediaQuery.of(context).size.width * 0.5,
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
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Appointment Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Column(
                children: [
                  textInputField(text1: "Name", text2: "Enter name"),
                  textInputField(text1: "Email", text2: "Enter your email"),
                  textInputField(text1: "Contact", text2: "Enter your Phone"),
                ],
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
                          });
                        }),
                    TextButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025));
                      },
                      child: Text(
                        "Schedule Request",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 100),
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
                        "Cancel",
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
                        "Confirm",
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
