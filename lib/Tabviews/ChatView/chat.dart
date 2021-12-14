import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ChatView/view_chat.dart';
import 'package:rehber_builders/utils/images.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text("New")),
            DoeWidgets(imgUrl: Images.boy1_image),
            DoeWidgets(imgUrl: Images.boy3_image),
            Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text("2 Days Ago")),
            AllDoneWidgets(
              imgUrl1: Images.boy1_image,
              icons11: Icons.done_all,
              Colors11: Color(0xff8ADE86),
            ),
            AllDoneWidgets(
              imgUrl1: Images.boy3_image,
              icons11: Icons.done,
              Colors11: Colors.black,
            ),
            AllDoneWidgets(
              imgUrl1: Images.boy1_image,
              icons11: Icons.done_all,
              Colors11: Color(0xff8ADE86),
            ),
            AllDoneWidgets(
              imgUrl1: Images.boy3_image,
              icons11: Icons.done,
              Colors11: Colors.black,
            ),
            AllDoneWidgets(
              imgUrl1: Images.boy1_image,
              icons11: Icons.done_all,
              Colors11: Colors.black,
            ),
            AllDoneWidgets(
              imgUrl1: Images.boy3_image,
              icons11: Icons.done,
              Colors11: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class AllDoneWidgets extends StatefulWidget {
  final imgUrl1;
  final icons11;

  // ignore: non_constant_identifier_names
  final Colors11;
  AllDoneWidgets({
    this.imgUrl1,
    required this.icons11,
    // ignore: non_constant_identifier_names
    required this.Colors11,
  });

  @override
  State<AllDoneWidgets> createState() => _AllDoneWidgetsState();
}

class _AllDoneWidgetsState extends State<AllDoneWidgets> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ViewChat()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black26))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage(widget.imgUrl1)),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Doe",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Some dummy text",
                        style: TextStyle(fontSize: 11, color: Colors.black54))
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("2 day ago", style: TextStyle(fontSize: 10)),
                Icon(widget.icons11, size: 18, color: widget.Colors11)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DoeWidgets extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final imgUrl;
  DoeWidgets({
    Key? key,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ViewChat()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            //color: Colors.grey,
            border: Border(bottom: BorderSide(color: Colors.black26))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage(imgUrl)),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Doe",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Some dummy text",
                        style: TextStyle(fontSize: 11, color: Colors.black54))
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("10 min", style: TextStyle(fontSize: 10)),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0xff5ADE86),
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
