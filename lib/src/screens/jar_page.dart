import 'package:Jarvise/src/data/data.dart';
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

class JarPage extends StatefulWidget {
  @override
  _JarPageState createState() => _JarPageState();
}

class _JarPageState extends State<JarPage> {
  List data = DataMap.jarData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext contextt) {
    print("==================Rebuild Done====================");
    print(data);
    if (PlatformCheck.isIOS) {
      return CupertinoPageScaffold(
        child: ChangeNotifierProvider<JarModel>(
            create: (context) => JarModel(), child: pageBody(contextt)),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ChangeNotifierProvider<JarModel>(
            create: (context) => JarModel(), child: pageBody(contextt)),
      );
    }
  }

  Widget typeContainer(
      String title, Color textColor, Color backgroundColor, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          data[selectedIndex]["selected"] = false;
          data[index]["selected"] = true;
          print(selectedIndex);

          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, right: 8.0, left: 8.0),
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Text(
          "$title",
          style: TextStyle(
              color: textColor, letterSpacing: 1, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget pageBody(BuildContext context) {
    return Container(
      padding: BaseStyles.topPadding,
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
                    SizedBox(height: 10.0),
                    Container(
                      height: 100.0,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/money-jar.png"),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0, bottom: 0.0),
                      child: Balance(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                BorderRadius.all(Radius.circular(20.0))),
                        child: RaisedButton(
                          child: Text(
                            "add money",
                            style: TextStyles.t1Text,
                          ),
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
                    Container(
                      height: 25.0,
                      margin: EdgeInsets.all(7.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: DataMap.jarData.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (data[index]["selected"]) {
                            return typeContainer(data[index]["title"],
                                Colors.white, Colors.black, index);
                          } else {
                            return typeContainer(data[index]["title"],
                                Colors.black, Colors.white, index);
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.black,
                          child: Stack(children: <Widget>[
                            // Expanded(
                            //   child: Container(
                            //       width: MediaQuery.of(context).size.width,
                            //       margin: EdgeInsets.only(top: 70.0),
                            //       decoration: BoxDecoration(
                            //           color: Colors.white,
                            //           borderRadius: BorderRadius.all(
                            //               Radius.circular(30.0))),
                            //       child: Column(
                            //         children: <Widget>[],
                            //       )),
                            // ),
                            Positioned(
                              top: 10.0,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/sticky.png"),
                              ),
                            ),

                            Positioned(
                              top: 10.0,
                              bottom: 250.0,
                              left: 210.0,
                              child: SizedBox(
                                child: Image(
                                  image: AssetImage("assets/money-jar.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 40.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Balance(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        jarStackButton(title: "add money"),
                                        jarStackButton(title: "info"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ])),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget jarStackButton({@required String title}) {
    return ButtonTheme(
      buttonColor: AppColors.logoPrimaryColor,
      minWidth: 100.0,
      height: 40.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }
}
