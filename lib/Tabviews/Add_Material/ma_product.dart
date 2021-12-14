import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rehber_builders/Tabviews/Add_Material/material_add.dart';
import 'package:rehber_builders/Tabviews/Add_Material/material_view.dart';
import 'package:rehber_builders/utils/images.dart';

class MaProduct extends StatefulWidget {
  const MaProduct({
    Key? key,
  }) : super(key: key);

  @override
  _MaProductState createState() => _MaProductState();
}

class _MaProductState extends State<MaProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.65,
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            ListMaterial(imgUrl: Images.sand, MaterialName: "Sand"),
            ListMaterial(imgUrl: Images.cement, MaterialName: "Cement"),
            ListMaterial(imgUrl: Images.pipe, MaterialName: "Pipe"),
            ListMaterial(imgUrl: Images.steel, MaterialName: "Steel"),
            ListMaterial(imgUrl: Images.brick, MaterialName: "Brick"),
            ListMaterial(imgUrl: Images.wood, MaterialName: "Wood"),
          ],
        ),
      ),
      Positioned(
        bottom: 10,
        right: 10,
        child: Container(
          height: 35,
          width: 35,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MaterialAdd()));
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.blue),
        ),
      )
    ]);
  }
}

// ignore: must_be_immutable
class ListMaterial extends StatelessWidget {
  final imgUrl;
  // ignore: non_constant_identifier_names
  String MaterialName;
  // ignore: non_constant_identifier_names
  ListMaterial({Key? key, this.imgUrl, required this.MaterialName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MaterialView()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        // width: MediaQuery.of(context).size.width * 0.9,
        // height: MediaQuery.of(context).size.height * 0.08,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black26))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(imgUrl),
                  width: 47,
                  height: 47,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MaterialName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Premium Quality", style: TextStyle(fontSize: 12))
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
