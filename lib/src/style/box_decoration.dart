import 'package:flutter/material.dart';

class BoxDecorationContainer {
  static BoxDecoration expandedContainerDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20.0),
        topLeft: Radius.circular(20.0),
      ),
    );
  }

   static BoxDecoration loginContainerDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        topLeft: Radius.circular(40.0),
      ),
    );
  }
}
