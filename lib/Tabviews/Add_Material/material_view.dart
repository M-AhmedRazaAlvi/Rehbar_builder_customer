import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';

import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/text_inputfield.dart';

class MaterialView extends StatefulWidget {
  const MaterialView({Key? key}) : super(key: key);

  @override
  _MaterialViewState createState() => _MaterialViewState();
}

class _MaterialViewState extends State<MaterialView> {
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
              Container(
                height: 109,
                width: 109,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Center(child: Image.asset(Images.stone1)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    textInputField(text1: "Product Name", text2: "Enter name"),
                    textInputField(text1: "Company Name", text2: "Enter name"),
                    textInputField(
                        text1: "Quality", text2: "Enter quality name"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: AppColors.textdarkGrey))),
                      child: TextField(
                        //controller: this._emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter quantity",
                            hintStyle: TextStyle(color: Colors.black38),
                            labelText: "Quantity",
                            labelStyle: TextStyle(
                                color: AppColors.textdarkGrey,
                                fontWeight: FontWeight.bold),
                            suffix: Container(
                              child: Text(
                                "(instock)",
                                style: TextStyle(color: AppColors.greenColor),
                              ),
                            )),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: AppColors.textdarkGrey))),
                      child: TextField(
                        //controller: this._emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter price",
                            hintStyle: TextStyle(color: Colors.black38),
                            labelText: "Price",
                            labelStyle: TextStyle(
                                color: AppColors.textdarkGrey,
                                fontWeight: FontWeight.bold),
                            suffix: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Per piece",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                      ),
                    ),
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
