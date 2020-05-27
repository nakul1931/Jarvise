import 'package:Jarvise/src/data/data.dart';
import 'package:Jarvise/src/models/jarModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class JarTypeContainer extends StatelessWidget {
  final JarModel data;

  const JarTypeContainer({this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      margin: EdgeInsets.all(7.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DataMap.jarData.length,
        itemBuilder: (BuildContext context, int index) {
          if (DataMap.jarData[index]["selected"]) {
            return typeContainer(DataMap.jarData[index]["title"], Colors.black,
                Colors.white, index);
          } else {
            return typeContainer(DataMap.jarData[index]["title"], Colors.white,
                Colors.black, index);
          }
        },
      ),
    );
  }

  Widget typeContainer(
      String title, Color textColor, Color backgroundColor, int index) {
    return GestureDetector(
      onTap: () {
        print(title);
        print(index);
        DataMap.jarData[index]["selected"] = true;
      },
      child: Container(
        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, right: 8.0, left: 8.0),
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Text(
          "$title",
          style: TextStyle(
              color: textColor, letterSpacing: 1, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
