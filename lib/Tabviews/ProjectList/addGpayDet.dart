import 'package:flutter/material.dart';
import 'package:rehber_builders/widgets/textBox.dart';

class AddGpayDetails extends StatefulWidget {
  const AddGpayDetails({Key? key}) : super(key: key);

  @override
  _AddGpayDetailsState createState() => _AddGpayDetailsState();
}

class _AddGpayDetailsState extends State<AddGpayDetails> {
  String? dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width * 3,
        height: size.height * 3,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        //// Parent Column ///
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
      
              
              TextBox(boxName: 'Card Number'),
              TextBox(boxName: 'Card Holder Name'),
              TextBox(boxName: 'CVV'),
              TextBox(boxName: 'Payment Subject'),
              TextBox(boxName: 'Amount'),
              TextBox(boxName: 'Paid to'),
              TextBox(boxName: 'Paid by'),
              
            ],
          ),
        ),
      ),
    );
  }
}
