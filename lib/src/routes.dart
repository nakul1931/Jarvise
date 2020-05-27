import 'package:Jarvise/src/screens/drawer_controlling.dart';
import 'package:Jarvise/src/screens/home_page.dart';
import 'package:Jarvise/src/screens/landing_page.dart';
import 'package:Jarvise/src/screens/loading_screen.dart';
import 'package:Jarvise/src/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

abstract class Routes {
  static MaterialPageRoute materialPageRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/landing":
        return MaterialPageRoute(builder: (context) => LandingPage());
      case "/login":
        return MaterialPageRoute(builder: (context) => LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (context) => HomePage());
      case "/drawer":
        return MaterialPageRoute(builder: (context) => DrawerControllerApp());
      case "/loading":
        // return MaterialPageRoute(builder: (context) => LoadingPage());

      default:
        return MaterialPageRoute(builder: (context) => LoginPage());
    }
  }

  static CupertinoPageRoute cupertinoPageRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/landing":
        return CupertinoPageRoute(builder: (context) => LandingPage());
      case "/login":
        return CupertinoPageRoute(builder: (context) => LoginPage());
      case "/home":
        return CupertinoPageRoute(builder: (context) => HomePage());
      case "/drawer":
        return CupertinoPageRoute(builder: (context) => DrawerControllerApp());
      case "/loading":
        // return CupertinoPageRoute(builder: (context) => LoadingPage());

      default:
        return CupertinoPageRoute(builder: (context) => LoginPage());
    }
  }
}
