import 'package:Jarvise/src/screens/landing_page.dart';
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

      default:
        return CupertinoPageRoute(builder: (context) => LoginPage());
    }
  }
}
