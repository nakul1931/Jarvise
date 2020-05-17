import 'package:Jarvise/src/style/colors.dart';
import 'package:flutter/material.dart';

class Notch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 5.0,
      decoration: BoxDecoration(
        color: AppColors.notchColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
