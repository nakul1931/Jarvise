import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

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

class PageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Check"),
    );
  }
}
