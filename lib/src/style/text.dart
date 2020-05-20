import 'package:Jarvise/src/style/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle get selectedTextTab =>
      TextStyle(fontWeight: FontWeight.w700, fontSize: 15);
  static TextStyle get nonselectedTextTab =>
      TextStyle(fontWeight: FontWeight.w700, fontSize: 15);
  static TextStyle get headingText =>
      TextStyle(fontWeight: FontWeight.w800, fontSize: 35,color: AppColors.headingTextColor);
  static TextStyle get t1Text => TextStyle(
      fontWeight: FontWeight.w800, fontSize: 20, color: AppColors.h1TextColor);
}
