import 'package:flutter/material.dart';

class TextBoxAccounts extends StatelessWidget {
  const TextBoxAccounts({
    Key? key,
    required this.boxName,
    required this.boxHint,
    this.suffixIcon,
  }) : super(key: key);

  final String boxName;
  final String boxHint;
  final suffixIcon;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              boxName,
              style: TextStyle(fontSize: 12.0),
            )),
        TextField(
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            labelStyle: TextStyle(fontSize: 14.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            hintText: boxHint,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
          ),
        ),
      ],
    );
  }
}
