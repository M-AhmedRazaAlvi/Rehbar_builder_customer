import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/payment_details.dart';

class ListPayWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  final ImgUrl;
  final String status;
  final Color statuscolor;
  const ListPayWidget({
    Key? key,
    // ignore: non_constant_identifier_names
    this.ImgUrl,
    required this.status,
    required this.statuscolor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PaymentDetails()));
      },
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.9,
        // height: MediaQuery.of(context).size.height * 0.09,
        padding: EdgeInsets.only(bottom: 5),
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            //color: Colors.grey,
            border: Border(bottom: BorderSide(color: Colors.black26))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage(ImgUrl),
                      foregroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      'Status',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'assets/font/Poppins-Medium.ttf'),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Text(
                          "Porject Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " (Commercial)",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[500]),
                        ),
                      ],
                    ),
                    Text(
                      "John Doe | Lahore",
                      style: TextStyle(fontSize: 10.5, color: Colors.grey[500]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: statuscolor,
                          fontFamily: 'assets/font/Poppins-Medium.ttf'),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.more_vert),
                Container(
                  margin: EdgeInsets.only(right: 10, bottom: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$434",
                        style: TextStyle(fontSize: 18, color: statuscolor),
                      ),
                      Text(
                        'Oct 2,2020',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
