import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ProjectList/addGpayDet.dart';
import 'package:rehber_builders/Tabviews/ProjectList/addbankdet.dart';
import 'package:rehber_builders/Tabviews/payment/nav_payment.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/tabButtons.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBarWidget(
            title: 'Payment',
            context: context,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Payment Method',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0))),
                      ),
                      TabBar(
                        unselectedLabelColor: Color(0xff6A6A6A),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.black,
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.5,
                                spreadRadius: 0.5,
                                offset: Offset(0.25, 1))
                          ],
                        ),
                        tabs: [
                          Tab(
                            child: TabButtons(
                              imgUrl: IconImages.bank,
                              name: 'Bank',
                            ),
                          ),
                          Tab(
                            child: TabButtons(
                              imgUrl: IconImages.visa,
                              name: 'Visa',
                            ),
                          ),
                          Tab(
                            child: TabButtons(
                              imgUrl: IconImages.pay,
                              name: 'G Pay',
                            ),
                          ),
                          Tab(
                            child: TabButtons(
                              imgUrl: IconImages.paypal,
                              name: 'Paypal',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.001),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: TabBarView(
                          children: [
                            AddBankDetails(),
                            AddBankDetails(),
                            AddGpayDetails(),
                            AddGpayDetails(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ///////// container////////
                Container(
                  width: double.infinity,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4A8FCE)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            IconImages.close_circle,
                            width: 36,
                            height: 36,
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 35),
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NavPayment(
                                          landleadState: false,
                                        )));
                              },
                              child: Text(
                                'Pay',
                                style: TextStyle(color: Color(0xff4A8FCE)),
                              ))
                        ],
                      )),
                      VerticalDivider(
                        color: Colors.white,
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$434',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Text(
                                    'See Transactions',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
