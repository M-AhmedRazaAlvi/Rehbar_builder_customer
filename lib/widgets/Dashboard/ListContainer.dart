import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/icon_images.dart';

class ListContainer extends StatelessWidget {
  final String containerName;
  final imgUrl;

  const ListContainer({
    Key? key,
    required this.containerName,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: size.height * 0.09,
        width: size.width * 0.889,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffFAFAFA),
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.06,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Image.asset(imgUrl,width: 19, height:19 ,)),
                    Text(
                      containerName,
                      style: TextStyle(
                        fontFamily: 'assets/font/Poppins-Medium.ttf',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              width: size.width * 0.04,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: size.height * 0.09,
                width: size.width * 0.367,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff6099CE),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.026,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(IconImages.watch, height: 10 , width: 10,),
                        ),
                        SizedBox(
                          width: size.width * 0.013,
                        ),
                        Text(
                          'Payment Overdue (2)',
                          style: TextStyle(color: Colors.white, fontSize: 9.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.026,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(IconImages.up_Notifer,height: 10 , width: 10,),
                        ),
                        SizedBox(
                          width: size.width * 0.013,
                        ),
                        Text(
                          'Upcomming Payement (8)',
                          style: TextStyle(color: Colors.white, fontSize: 9.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
