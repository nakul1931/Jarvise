import 'package:Jarvise/src/widgets/expanded_container.dart';
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
      return Scaffold(body: _pageBody(context));
    }
  }
}

Widget _pageBody(BuildContext context) {
  return Container(
    child: Stack(
      children: <Widget>[
        ExpandedContainer(
          color: Colors.blueAccent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("c"),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ExpandedContainer(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Notch()],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ExpandedContainer(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Notch(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
