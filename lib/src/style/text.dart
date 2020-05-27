import 'package:Jarvise/src/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle get selectedTextTab =>
      TextStyle(fontWeight: FontWeight.w700, fontSize: 15);
  static TextStyle get nonselectedTextTab =>
      TextStyle(fontWeight: FontWeight.w700, fontSize: 15);
  static TextStyle get headingText => TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 35,
      color: AppColors.headingTextColor);
  static TextStyle get t1Text => TextStyle(
      fontWeight: FontWeight.w800, fontSize: 20, color: AppColors.h1TextColor);

  static TextStyle get amount => GoogleFonts.roboto(
      textStyle: TextStyle(
          fontWeight: FontWeight.bold, color: AppColors.black, fontSize: 32.0));
  static TextStyle get availBal => GoogleFonts.roboto(
      textStyle: TextStyle(color: AppColors.darkGrey, fontSize: 16.0));
}
