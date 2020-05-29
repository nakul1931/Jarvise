import 'package:Jarvise/src/screens/add_card.dart';
import 'package:Jarvise/src/screens/home_page.dart';
import 'package:Jarvise/src/screens/jar_page.dart';
import 'package:Jarvise/src/screens/settings.dart';
import 'package:Jarvise/src/style/colors.dart';
import 'package:Jarvise/src/style/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DrawerControllerApp extends StatefulWidget {
  @override
  _DrawerControllerAppState createState() => _DrawerControllerAppState();
}

class _DrawerControllerAppState extends State<DrawerControllerApp> {
  int _selectedIndex = 0;

  Widget child;
  @override
  Widget build(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        child = HomePage();
        break;
      case 1:
        child = JarPage();
        break;
      case 2:
        child = CardPage();
        break;

      case 3:
        child = SettingsPage();
        break;
      default:
        child = HomePage();
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 10,
                activeColor: Colors.white,
                iconSize: 22,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: AppColors.logoPrimaryColor,
                tabs: [
                  GButton(
                    icon: FontAwesomeIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.wallet,
                    text: 'Wallet',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.solidCreditCard,
                    text: 'Cards',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.cog,
                    text: 'Settings',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  print(index);
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }

  // Widget navBarChild(
  //     {@required bool isSelected,
  //     @required String title,
  //     @required IconData icon}) {
  //   return Center(
  //       child: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       Icon(
  //         icon,
  //       ),
  //       SizedBox(
  //         width: 6.0,
  //       ),
  //       Text(
  //         title,
  //         style: isSelected
  //             ? TextStyles.selectedTextTab
  //             : TextStyles.nonselectedTextTab,
  //       ),
  //     ],
  //   ));
  // }
}
