import 'package:Jarvise/src/screens/home_page.dart';
import 'package:Jarvise/src/screens/settings.dart';
import 'package:Jarvise/src/style/colors.dart';
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

    // switch (_selectedIndex) {
    //   case 0:
    //     child = HomePage();
    //     break;
    //   case 2:
    //     child = SettingsPage();
    //     break;
    //   default:
    //     child = HomePage();
    // }

    return Scaffold(
        body: Center(
          child: Text("d"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.logoPrimaryColor,
          selectedIconTheme: IconThemeData(color: AppColors.logoPrimaryColor),
          unselectedItemColor: Colors.black,
          onTap: (value) {
            print(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
          ],
        ));
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
