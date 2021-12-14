import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rehber_builders/Tabviews/Appointments/view_appointment.dart';
import 'package:rehber_builders/Tabviews/RequestScreen/view_request.dart';
import 'package:rehber_builders/utils/images.dart';

class AllRequest extends StatelessWidget {
  const AllRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text("New")),
              JohnWidget(
                imgUrl: Images.boy1_image,
                navstate: true,
              ),
              JohnWidget(
                imgUrl: Images.boy3_image,
                navstate: true,
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text("2 Days Ago")),
              JohnWidget(
                imgUrl: Images.boy1_image,
                navstate: true,
              ),
              JohnWidget(
                imgUrl: Images.boy3_image,
                navstate: true,
              ),
              JohnWidget(
                imgUrl: Images.boy1_image,
                navstate: true,
              ),
              JohnWidget(
                imgUrl: Images.boy3_image,
                navstate: true,
              ),
            ],
          ),
          Positioned(
              bottom: 20,
              right: 10,
              child: CircleAvatar(radius: 20, child: Icon(Icons.add)))
        ]),
      ),
    );
  }
}

class JohnWidget extends StatefulWidget {
  final imgUrl;
  final bool navstate;

  const JohnWidget({
    Key? key,
    this.imgUrl,
    required this.navstate,
  }) : super(key: key);

  @override
  _JohnWidgetState createState() => _JohnWidgetState();
}

class _JohnWidgetState extends State<JohnWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    widget.navstate ? ViewRequest() : ViewAppointments()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            //color: Colors.grey,
            border: Border(bottom: BorderSide(color: Colors.black26))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage(widget.imgUrl),
                ),
                const SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "John Doe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "requested you for a meeting",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.more_vert,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, bottom: 3),
                  child: const Text(
                    "10:13 PM",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
