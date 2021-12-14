import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/Appointments/appointments.dart';
import 'package:rehber_builders/Tabviews/RequestScreen/request_screen.dart';
import 'package:rehber_builders/Tabviews/builder_list.dart';
import 'package:rehber_builders/utils/icon_images.dart';
import 'package:rehber_builders/utils/images.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 322.0,
              //height: MediaQuery.of(context).size.height,
              color: Color(0xff28639A),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 322,
                    height: 300,
                    padding: EdgeInsets.symmetric(vertical: 33),
                    decoration: BoxDecoration(
                      color: Color(0xff1A3D74),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff1A3D74),
                          foregroundImage: AssetImage(Images.boy4_image),
                          maxRadius: 30.0,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'John Doe',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'assets/font/Poppins-Medium.ttf'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Account Manager',
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                                fontFamily: 'assets/font/Poppins-Medium.ttf',
                              ),
                            ),
                            SizedBox(width: 3.0),
                            Icon(Icons.edit, color: Colors.white, size: 11.0)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      padding:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 5),
                      //color: Colors.green,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  child: ImageSet(imgUrl: IconImages.vector1)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 26),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Appointments()));
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  child: ImageSet(
                                    imgUrl: IconImages.calander,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Text(
                                  'Appointments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RequestScreen()));
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  child: ImageSet(
                                    imgUrl: IconImages.edit1,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Text(
                                  'Request',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuilderList()));
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  child: ImageSet(
                                    imgUrl: IconImages.group_person,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Text(
                                  'Builders',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                child: ImageSet(
                                  imgUrl: IconImages.person_1,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Text(
                                'Customers',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 26),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                child: ImageSet(
                                  imgUrl: IconImages.phone,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 26),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                child: ImageSet(
                                  imgUrl: IconImages.help,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Text(
                                'Help',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 51),
                          Container(
                            child: Column(
                              children: [
                                Divider(color: Colors.white),
                                Row(
                                  children: [
                                    Image.asset(IconImages.vector8,
                                        height: 19, width: 20),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.06),
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.038,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSet extends StatelessWidget {
  const ImageSet({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      height: 17,
      width: 17,
    );
  }
}
