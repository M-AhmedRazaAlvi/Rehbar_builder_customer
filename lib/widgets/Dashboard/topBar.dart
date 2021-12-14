import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ChatView/chat_search.dart';
import 'package:rehber_builders/utils/icon_images.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required GlobalKey<ScaffoldState> globalKey,
  })  : _globalKey = globalKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _globalKey.currentState!.openDrawer();
          },
          child: Image.asset(
            IconImages.lines,
            width: 22.67,
            height: 17,
          ),
        ),
        SizedBox(width: 10),
        // Container(
        //     width: MediaQuery.of(context).size.width * 0.75,
        //     child: SearchWidget()),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
              filled: true,
              hintText: 'Search',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
              hintStyle: TextStyle(
                fontSize: 19,
                color: Color(0xff3C3C4399),
              ),
              fillColor: Color(0xffFAFAFA),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),

        SizedBox(
          width: 10,
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatSearch()));
            },
            child: Image.asset(
              IconImages.msg_dot,
              width: 20,
              height: 19.12,
            )),
      ],
    );
  }
}
