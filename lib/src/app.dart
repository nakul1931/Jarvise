import 'package:Jarvise/src/routes.dart';
import 'package:Jarvise/src/screens/add_card.dart';
import 'package:Jarvise/src/screens/drawer_controlling.dart';
import 'package:Jarvise/src/screens/home_page.dart';
import 'package:Jarvise/src/screens/jar_page.dart';
// import 'package:Jarvise/src/screens/drawer_controlling.dart';
import 'package:Jarvise/src/screens/login_page.dart';
import 'package:Jarvise/src/utils/shared_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:lottie/lottie.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool status = false;
  bool login = false;

  @override
  void initState() {
    StoreData.checkLogin().then((value) {
      setState(() {
        status = value;
        login = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return login
        ? (PlatformApp(page: !status ? JarPage() : DrawerControllerApp()))
        : MaterialApp(
            home: Scaffold(
                body: Center(child: Lottie.asset("assets/start.json"))));
  }
}

class PlatformApp extends StatelessWidget {
  final Widget page;

  const PlatformApp({Key key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        onGenerateRoute: Routes.cupertinoPageRoute,
        home: page,
      );
    } else {
      return MaterialApp(onGenerateRoute: Routes.materialPageRoute, home: page);
    }
  }
}
