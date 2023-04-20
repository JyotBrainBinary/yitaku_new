import 'package:flutter/material.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../utils/font_res.dart';

TextStyle overpassRegular({Color? color,
  double? fontSize,
  double? letterSpacing,
  TextDecoration? textdeco,
  double? height,

  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontSize: fontSize ?? 14,
    fontFamily: FontRes.overpassRegular,
    letterSpacing: letterSpacing ?? 0,
    decoration: textdeco,
    height: height,

  );
}

TextStyle regular({Color? color,
  double? fontSize,
  double? letterSpacing,
  TextDecoration? textdeco,
  double? height,

  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontSize: fontSize ?? 14,
    letterSpacing: letterSpacing ?? 0,
    decoration: textdeco,
    height: height,

  );
}

TextStyle medium({Color? color,
  double? fontSize,
  double? letterSpacing,
  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsMedium,
    letterSpacing: letterSpacing ?? 0,
  );
}

TextStyle semiBold({Color? color,
  double? fontSize,
  double? letterSpacing,
  TextDecoration? textdeco,
  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? 14,
    decoration: textdeco,
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}


TextStyle bold({Color? color,
  double? fontSize,
  double? letterSpacing,
  FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}