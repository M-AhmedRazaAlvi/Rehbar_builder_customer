
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    Key? key, required this.boxName,
   
  }) : super(key: key);
  final String boxName;
  
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(boxName, style: TextStyle( fontSize: 12)),
        SizedBox(
          height: size.height * 0.005,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 12, horizontal: 10),

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
    );
  }
}
