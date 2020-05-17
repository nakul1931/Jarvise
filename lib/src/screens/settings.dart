import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: _pageBody(context),
      );
    } else {
      return Scaffold(
        body: _pageBody(context),
      );
    }
  }
}

Widget _pageBody(BuildContext context) {
  return Center(
    child: Text("Settings Page"),
  );
}
