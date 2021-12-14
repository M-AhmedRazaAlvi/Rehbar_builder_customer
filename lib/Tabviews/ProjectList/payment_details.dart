import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/text_inputfield.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: 'View Project', context: context, ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Payment Details",
                      style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: AppColors.textdarkGrey))),
                    child: TextField(
                      //controller: this._emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter subject",
                          hintStyle: TextStyle(color: Colors.black38),
                          labelText: "Payment Subject",
                          labelStyle: TextStyle(
                              color: AppColors.textdarkGrey,
                              fontWeight: FontWeight.bold),
                          suffixIcon: Container(
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: Image.asset(IconImages.attachment),
                          )),
                    ),
                  ),
                  textInputField(text1: "Paid to", text2: "Enter name"),
                  textInputField(text1: "Paid by ", text2: "Enter name"),
                  textInputField(
                      text1: "Payment Method", text2: "Enter somethink"),
                  textInputField(
                      text1: "Payment Referment no.", text2: "Enter no."),
                  textInputField(text1: "Payment Date", text2: "Enter date"),
                  textInputField(text1: "Paid Amount", text2: "Enter amount"),
                  textInputField(
                      text1: "Remaining Amount", text2: "Enter amount"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
