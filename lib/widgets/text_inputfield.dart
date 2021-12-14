import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/app_colors.dart';

// ignore: camel_case_types
class textInputField extends StatefulWidget {
  final String text1;
  final String text2;
  const textInputField({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  _textInputFieldState createState() => _textInputFieldState();
}

// ignore: camel_case_types
class _textInputFieldState extends State<textInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: AppColors.textdarkGrey))),
      child: TextField(
        //controller: this._emailController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.text1,
          labelStyle: TextStyle(
              color: AppColors.textdarkGrey, fontWeight: FontWeight.bold),
          hintText: widget.text2,
          hintStyle: TextStyle(color: Colors.black38),
        ),
      ),
    );
  }
}
