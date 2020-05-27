import 'package:Jarvise/src/style/colors.dart';
import 'package:Jarvise/src/widgets/expanded_container.dart';
import 'package:Jarvise/src/widgets/homeButton.dart';
import 'package:Jarvise/src/widgets/notch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(child: _pageBody(context));
    } else {
      return SafeArea(
        child: Scaffold(
          body: _pageBody(context),
          backgroundColor: AppColors.logoPrimaryColor,
        ),
      );
    }
  }
}

Widget _pageBody(BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height / 3 - 50.0,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("₹ Total Balance"),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("Available Balance"),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HomeButton(),
                HomeButton(),
                HomeButton(),
                HomeButton(),
              ],
            )
          ],
        ),
      ),
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
          ),
          child: Column(
            children: <Widget>[
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Recent transactions"),
                Text("See All")
              ],)
            ],
          ),
        ),
      )
    ],
  );
}
