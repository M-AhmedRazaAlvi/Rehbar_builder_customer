import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/widgets/textBox.dart';

class AddBankDetails extends StatefulWidget {
  const AddBankDetails({Key? key}) : super(key: key);

  @override
  _AddBankDetailsState createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {
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
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Transfer Method'),
                  Container(
                      height: 30,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                            ),
                            iconSize: 24,
                            isExpanded: true,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['', 'English', 'Greek', 'Arabic']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value, child: Text(value));
                            }).toList(),
                          ),
                        ),
                      )),
                ]),
                SizedBox(
                  width: size.width * 0.07,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Attach Reciept'),
                    Container(
                      width: size.width * 0.09,
                      height: size.width * 0.09,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(IconImages.attach1),
                    )
                  ],
                )
              ]),
              TextBox(boxName: 'Cheque Number'),
              TextBox(boxName: 'Pay Order Number'),
              TextBox(boxName: 'Bank Transfer Ref No.'),
              TextBox(boxName: 'Email'),
              TextBox(boxName: 'Amount'),
              TextBox(boxName: 'Invoice'),
            ],
          ),
        ),
      ),
    );
  }
}
