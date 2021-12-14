import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';

class MaterialAdd extends StatefulWidget {
  const MaterialAdd({Key? key}) : super(key: key);

  @override
  _MaterialAddState createState() => _MaterialAddState();
}

class _MaterialAddState extends State<MaterialAdd> {
  late File _image;
  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.platform.pickImage(source: ImageSource.camera)
          as File;
    } else {
      image = await ImagePicker.platform.pickImage(source: ImageSource.gallery)
          as File;
    }
    setState(() {
      _image = image;
    });
  }

  String? dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'Material',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CameraWidget(context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ProdInformation(text1: "Product Name"),
                    ProdInformation(text1: "Brand Name"),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Maretial Provider")),
                    SizedBox(height: 10),
                    Gggsjjsnkn(),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Product Class")),
                    SizedBox(height: 10),
                    Gggsjjsnkn(),
                    SizedBox(height: 10),
                    ProdInformation(text1: "Quantity"),
                    ProdInformation(text1: "Price"),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text("Cancel",
                                  style: TextStyle(color: Colors.red)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 55, vertical: 12),
                              decoration: BoxDecoration(
                                  color: AppColors.Bgblue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
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

  // ignore: non_constant_identifier_names
  Container CameraWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  title: Text("Make your choice!"),
                  content: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            width: 200,
                            child: IconButton(
                              onPressed: () {
                                getImage(true);
                              },
                              icon: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      margin: EdgeInsets.only(right: 15),
                                      child: Icon(Icons.camera_alt)),
                                  Text("Camera")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 200,
                            margin: EdgeInsets.only(),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: EdgeInsets.only(right: 6, left: 10),
                                  child: Image.asset(IconImages.gallery,
                                      color: Colors.black, fit: BoxFit.contain),
                                ),
                                SizedBox(width: 6),
                                Text("Gallery")
                              ],
                            ),
                          ),
                        ],
                      )),
                );
              });
        },
        child: Center(
            child: Image.asset(
          IconImages.camera1,
          width: 36,
          height: 36,
        )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container Gggsjjsnkn() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 50,
          padding: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              color: Color(0xff404040),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(enabledBorder: InputBorder.none),
            elevation: 0,
            value: dropdownValue,
            icon: Container(
              child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ),
            iconSize: 24,
            isExpanded: true,
            style: TextStyle(color: Colors.black, fontSize: 16),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['', '1', '2', '3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ProdInformation extends StatelessWidget {
  String text1;
  ProdInformation({required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: Text(text1)),
          SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              filled: true,
              fillColor: Colors.grey[200],
              //  focusedErrorBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
