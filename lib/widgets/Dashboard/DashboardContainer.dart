import 'package:flutter/material.dart';

class DashBoardContainer extends StatelessWidget {
  const DashBoardContainer({
    Key? key,
    this.imgUrl,
    required this.colorContainer,
    required this.containerName,
    required this.number,
    required this.text,
    required this.numbercolor,
  }) : super(key: key);

  final imgUrl;
  final Color colorContainer;
  final String containerName;
  final String number;
  final String text;
  final Color numbercolor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        // height: size.height * 0.17,
        width: size.width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorContainer,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  imgUrl,
                  height: 19.41,
                  width: 18.01,
                )),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 8),
              child: Text(
                containerName,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'assets/font/Poppins-Medium.ttf'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'assets/font/Poppins-Medium.ttf',
                    color: Colors.white,
                  ),
                ),
                Text(
                  '($number)',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'assets/font/Poppins-Medium.ttf',
                    color: numbercolor,
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
