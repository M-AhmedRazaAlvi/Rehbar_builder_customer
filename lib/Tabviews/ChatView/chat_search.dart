import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/ChatView/chat.dart';
import 'package:rehber_builders/widgets/AppBarWidget.dart';
import 'package:rehber_builders/widgets/search_widget.dart';

class ChatSearch extends StatefulWidget {
  const ChatSearch({Key? key}) : super(key: key);

  @override
  _ChatSearchState createState() => _ChatSearchState();
}

class _ChatSearchState extends State<ChatSearch> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBarWidget(
            title: 'Chat',
            context: context,
          ),
          // ignore: avoid_unnecessary_containers
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SearchWidget(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 38.0,
                  width: 365.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffEEEEEE),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Color(0xff6A6A6A),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 0.5,
                            offset: Offset(1, 1))
                      ],
                    ),
                    tabs: [
                      Tab(
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                              bottom: 3,
                              left: -10,
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green,
                              )),
                          Text('All', style: TextStyle(fontSize: 12))
                        ]),
                      ),
                      Tab(
                        child: Text('Customer', style: TextStyle(fontSize: 12)),
                      ),
                      Tab(
                        child: Text('Builder', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 14,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.74,
                    child: TabBarView(
                      children: [
                        Chat(),
                        Chat(),
                        Chat(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
