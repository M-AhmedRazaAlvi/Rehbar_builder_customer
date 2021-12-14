import 'package:flutter/material.dart';

class ListActWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  final ImgUrl;
  final String status;
  final Color statusColor;
  const ListActWidget({
    Key? key,
    // ignore: non_constant_identifier_names
    this.ImgUrl,
    required this.status,
    required this.statusColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      //height: MediaQuery.of(context).size.height * 0.10,
      padding: EdgeInsets.only(bottom: 5),
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          //color: Colors.grey,
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 45,
                      width: 45,
                      child: Image(image: AssetImage(ImgUrl))),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Porject Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Activity:Digging",
                        style:
                            TextStyle(fontSize: 10.5, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6, bottom: 15),
                    child: Text(
                      "(Commercial)",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 25),
                  Text(
                    status,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: statusColor,
                        fontFamily: 'assets/font/Poppins-Medium.ttf'),
                  ),
                ],
              ),
              Text(
                'Oct 2,2020',
                style: TextStyle(fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
