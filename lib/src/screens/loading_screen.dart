import 'dart:io';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';


Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SizedBox(
            height: 200,
            width: 100,
            child: Lottie.asset("assets/start.json"),
          ),
          actions: null);
    },
  );
}
// }
// }
