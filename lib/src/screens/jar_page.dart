import 'package:Jarvise/src/models/jarModel.dart';
import 'package:Jarvise/src/style/base.dart';
import 'package:Jarvise/src/style/colors.dart';
import 'package:Jarvise/src/style/text.dart';
import 'package:Jarvise/src/utils/platform_check.dart';
import 'package:Jarvise/src/widgets/avail_balance.dart';
import 'package:Jarvise/src/widgets/homeButton.dart';
import 'package:Jarvise/src/widgets/image_container.dart';
import 'package:Jarvise/src/widgets/jar_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JarPage extends StatelessWidget {
  @override
  Widget build(BuildContext contextt) {
    if (PlatformCheck.isIOS) {
      return CupertinoPageScaffold(
        child: ChangeNotifierProvider<JarModel>(
            create: (context  ) => JarModel(), child: pageBody(contextt)),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ChangeNotifierProvider<JarModel>(
            create: (context) => JarModel(), child: pageBody(contextt)),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    // dynamic data = Provider.of<JarModel>(context);
    return Container(
      padding: BaseStyles.topPadding,
      // margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3 - 50.0,
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 130.0,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/jar.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0, bottom: 0.0),
                      child: Balance(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ImageContainer(),
                    ),
                    SizedBox(height: 5.0),
                    ButtonTheme(
                        height: 40,
                        minWidth: 120,
                        buttonColor: AppColors.logoPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: RaisedButton(
                          child: Text("Add jar", style: TextStyles.t1Text),
                          onPressed: () => {},
                        )),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.logoPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    JarTypeContainer(),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
