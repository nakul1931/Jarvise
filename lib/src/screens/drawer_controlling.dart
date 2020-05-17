import 'package:Jarvise/src/screens/home_page.dart';
import 'package:Jarvise/src/screens/settings.dart';
import 'package:Jarvise/src/style/text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DrawerControllerApp extends StatefulWidget {
  @override
  _DrawerControllerAppState createState() => _DrawerControllerAppState();
}

class _DrawerControllerAppState extends State<DrawerControllerApp> {
  int _selectedIndex = 0;

  Widget child;
  @override
  Widget build(BuildContext context) {
    print("+++++IN DRAWER++++++");
    print("Index in Drawer is $_selectedIndex");
    switch (_selectedIndex) {
      case 0:
        child = HomePage();
        break;
      case 2:
        child = SettingsPage();
        break;
      default:
        child = HomePage();
    }

    return Scaffold(
      body: Center(child: child),
      bottomNavigationBar: NeumorphicToggle(
        height: 50.0,
        selectedIndex: _selectedIndex,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            foreground:
                navBarChild(isSelected: true, title: "home", icon: Icons.home),
            background:
                navBarChild(isSelected: false, title: "home", icon: Icons.home),
          ),
          ToggleElement(
            foreground:
                navBarChild(isSelected: true, title: "jars", icon: Icons.home),
            background:
                navBarChild(isSelected: false, title: "jars", icon: Icons.home),
          ),
          ToggleElement(
            foreground: navBarChild(
                isSelected: true, title: "cards", icon: Icons.credit_card),
            background: navBarChild(
                isSelected: false, title: "cards", icon: Icons.credit_card),
          ),
        ],
        thumb: null,
        onChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }

  Widget navBarChild(
      {@required bool isSelected,
      @required String title,
      @required IconData icon}) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          title,
          style: isSelected
              ? TextStyles.selectedTextTab
              : TextStyles.nonselectedTextTab,
        ),
      ],
    ));
  }
}
