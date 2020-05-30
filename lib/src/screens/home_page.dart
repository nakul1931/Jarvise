import 'package:Jarvise/src/data/data.dart';
import 'package:Jarvise/src/style/colors.dart';
import 'package:Jarvise/src/widgets/avail_balance.dart';
import 'package:Jarvise/src/widgets/expanded_container.dart';
import 'package:Jarvise/src/widgets/homeButton.dart';
import 'package:Jarvise/src/widgets/image_container.dart';
import 'package:Jarvise/src/widgets/notch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:Jarvise/src/data/balance.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(child: _pageBody(context));
    } else {
      return SafeArea(
        child: Scaffold(
          body: PageBody(),
          backgroundColor: AppColors.logoPrimaryColor,
        ),
      );
    }
  }
}

class PageBody extends StatefulWidget {
  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  String toAdd;
  List totalBalance = DataMap.totalBalance;
  BalanceApp balanceApp = BalanceApp();

  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3 - 50.0,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Balance(
                    balance: totalBalance[0]["totalBalance"],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ImageContainer(),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  HomeButton(
                    imageName: "add_money.png",
                    onTap: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actionsPadding:
                                  EdgeInsets.only(right: 10.0, bottom: 10.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              title: Text("Enter Amount"),
                              content: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: TextField(
                                  onChanged: (String value) {
                                    toAdd = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 2.0),
                                    ),
                                  ),
                                ),
                              ),
                              actions: <Widget>[
                                ButtonTheme(
                                  minWidth: 80.0,
                                  height: 50.0,
                                  buttonColor: AppColors.logoPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: RaisedButton(
                                    child: Text(
                                      "Add money",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      if (toAdd != null) {
                                        int bal = int.parse(toAdd);
                                        print(toAdd);

                                        setState(() {
                                          totalBalance[0]["totalBalance"] =
                                              bal +
                                                  totalBalance[0]
                                                      ["totalBalance"];
                                        });
                                      }

                                      Navigator.pop(context);
                                    },
                                  ),
                                )
                              ],
                            );
                          });
                    },
                  ),
                  HomeButton(
                    imageName: "passbook.png",
                  ),
                  HomeButton(
                    imageName: "add_money.png",
                  ),
                  HomeButton(
                    imageName: "add_money.png",
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Recent transactions"),
                    Text("See All")
                  ],
                ),
                FlatButton(
                  onPressed: () {
                    // showTimePicker(context: null, initialTime: );
                  },
                  child: Text("Select time"),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget _pageBody(BuildContext context) {
  // String toAdd;
  // return Column(
  //   children: <Widget>[
  //     Container(
  //       height: MediaQuery.of(context).size.height / 3 - 50.0,
  //       padding: EdgeInsets.all(20.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: <Widget>[
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               Balance(
  //                 balance: totalBalance[0]["totalBalance"],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 10.0),
  //                 child: ImageContainer(),
  //               ),
  //             ],
  //           ),
  //           SizedBox(
  //             height: 5.0,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               HomeButton(
  //                 imageName: "add_money.png",
  //                 onTap: () {
  //                   showDialog(
  //                       context: context,
  //                       barrierDismissible: false,
  //                       builder: (BuildContext context) {
  //                         return AlertDialog(
  //                           actionsPadding:
  //                               EdgeInsets.only(right: 10.0, bottom: 10.0),
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius:
  //                                   BorderRadius.all(Radius.circular(20.0))),
  //                           title: Text("Enter Amount"),
  //                           content: Container(
  //                             height: 100.0,
  //                             decoration: BoxDecoration(
  //                                 borderRadius:
  //                                     BorderRadius.all(Radius.circular(20.0))),
  //                             child: TextField(
  //                               onChanged: (String value) {
  //                                 toAdd = value;
  //                               },
  //                               keyboardType: TextInputType.number,
  //                               decoration: InputDecoration(
  //                                 border: OutlineInputBorder(
  //                                   borderSide: BorderSide(width: 2.0),
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                           actions: <Widget>[
  //                             ButtonTheme(
  //                               minWidth: 80.0,
  //                               height: 50.0,
  //                               buttonColor: AppColors.logoPrimaryColor,
  //                               shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.all(
  //                                       Radius.circular(20.0))),
  //                               child: RaisedButton(
  //                                 child: Text(
  //                                   "Add money",
  //                                   style: TextStyle(color: Colors.white),
  //                                 ),
  //                                 onPressed: () {
  //                                   if (toAdd != null) {
  //                                     int.parse(toAdd);
  //                                     print(toAdd);
  //                                   }

  //                                   Navigator.pop(context);
  //                                 },
  //                               ),
  //                             )
  //                           ],
  //                         );
  //                       });
  //                 },
  //               ),
  //               HomeButton(
  //                 imageName: "passbook.png",
  //               ),
  //               HomeButton(
  //                 imageName: "add_money.png",
  //               ),
  //               HomeButton(
  //                 imageName: "add_money.png",
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //     Expanded(
  //       child: Container(
  //         width: MediaQuery.of(context).size.width,
  //         padding: EdgeInsets.all(20.0),
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.only(
  //               topRight: Radius.circular(30.0),
  //               topLeft: Radius.circular(30.0)),
  //         ),
  //         child: Column(
  //           children: <Widget>[
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: <Widget>[
  //                 Text("Recent transactions"),
  //                 Text("See All")
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     )
  //   ],
  // );
}
