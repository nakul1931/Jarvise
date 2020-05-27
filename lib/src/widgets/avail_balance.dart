import 'package:Jarvise/src/style/text.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "₹ 2576",
          style: TextStyles.amount,
        ),
        SizedBox(height: 5.0),
        Text(
          "Available Balance",
          style: TextStyles.availBal,
        ),
      ],
    ));
  }
}
