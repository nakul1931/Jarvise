import 'package:Jarvise/src/routes.dart';
import 'package:Jarvise/src/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        onGenerateRoute: Routes.cupertinoPageRoute,
        home: LoginPage(),
      );
    } else {
      return MaterialApp(
          onGenerateRoute: Routes.materialPageRoute, home: LoginPage());
    }
  }
}
