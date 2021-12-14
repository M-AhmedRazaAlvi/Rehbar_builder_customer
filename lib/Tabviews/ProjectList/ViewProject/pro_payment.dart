import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/addPayment.dart';
import 'package:rehber_builders/utils/app_colors.dart';
import 'package:rehber_builders/utils/images.dart';

class ProPayment extends StatefulWidget {
  const ProPayment({
    Key? key,
  }) : super(key: key);

  @override
  _ProPaymentState createState() => _ProPaymentState();
}

class _ProPaymentState extends State<ProPayment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Payment Plans",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffE6F3FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Total Contract", style: TextStyle(fontSize: 10)),
                      Text(
                        "\$4534",
                        style: TextStyle(
                            color: AppColors.textdarkGrey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffDDFFBB),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Receive Payment", style: TextStyle(fontSize: 10)),
                      Text(
                        "\$434",
                        style: TextStyle(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffFEBEBE),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Paid Payment", style: TextStyle(fontSize: 10)),
                      Text(
                        "\$44",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddPayment()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xff4A8FCE),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                      child: Icon(Icons.add, size: 15)),
                  SizedBox(width: 10),
                  Text("Add Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Transection details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TransectionWidget(
              imgUlr: Images.boy1_image,
              text1: "Builder Rehber",
              text2: "Paid to xyz",
              text3: "Paid",
              icon1: Icons.arrow_upward,
              colors1: Colors.red),
          TransectionWidget(
              imgUlr: Images.boy3_image,
              text1: "John Deo",
              text2: "Paid by John Deo",
              text3: "Recevie",
              icon1: Icons.arrow_downward,
              colors1: AppColors.greenColor),
          TransectionWidget(
              imgUlr: Images.boy1_image,
              text1: "Builder Rehber",
              text2: "Paid to xyz",
              text3: "Paid",
              icon1: Icons.arrow_upward,
              colors1: Colors.red),
          TransectionWidget(
              imgUlr: Images.boy3_image,
              text1: "John Deo",
              text2: "Paid by John Deo",
              text3: "Recevie",
              icon1: Icons.arrow_downward,
              colors1: AppColors.greenColor),
        ],
      ),
    );
  }
}

class TransectionWidget extends StatelessWidget {
  final imgUlr;
  final String text1;
  final String text2;
  final String text3;
  final colors1;
  final icon1;

  const TransectionWidget({
    Key? key,
    this.imgUlr,
    required this.text1,
    required this.text2,
    required this.text3,
    this.colors1,
    this.icon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 5),
      // height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black38))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(child: Image.asset(imgUlr)),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(text1,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        "  (Project name)",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Text(text2, style: TextStyle(fontSize: 12)),
                  Row(
                    children: [
                      Icon(icon1, size: 12, color: colors1),
                      SizedBox(width: 3),
                      Text(text3,
                          style: TextStyle(
                              fontSize: 12,
                              color: colors1,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ],
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Oct 10,2020",
                  style: TextStyle(fontSize: 9, color: AppColors.textdarkGrey)),
              Text("\$434",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}
