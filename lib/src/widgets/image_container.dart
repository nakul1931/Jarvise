import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image(
            image: AssetImage("assets/logo.png"),
          ),
        ));
  }
}
