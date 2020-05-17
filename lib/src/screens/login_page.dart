import 'package:Jarvise/src/style/base.dart';
import 'package:Jarvise/src/style/box_decoration.dart';
import 'package:Jarvise/src/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:animated_neumorphic/animated_neumorphic.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: PageBody(),
      );
    } else {
      return Scaffold(
        body: PageBody(),
      );
    }
  }
}

class PageBody extends StatefulWidget {
  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BaseStyles.topPadding,
      child: Stack(
        children: <Widget>[
          Container(
            padding: BaseStyles.containerPadding,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.secondaryColor,
            child: Text("Check"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: BaseStyles.containerPadding,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecorationContainer.loginContainerDecoration(
                  Colors.blueAccent),
              child: Text("Check"),
            ),
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: NeumorphicButton(
              style: NeumorphicStyle(shape: NeumorphicShape.concave),
              boxShape: NeumorphicBoxShape.circle(),
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_back_ios),
              onClick: () {
                // Navigator.pop(context);
                print("=====Back Button Pressed=====");
              },
            ),
          )
        ],
      ),
    );
  }
}
