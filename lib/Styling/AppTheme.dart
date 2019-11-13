import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme() {
  return ThemeData(
    backgroundColor: Color(0xff912442),
    fontFamily: 'Roboto',
    textTheme: textTheme(),
    buttonColor: Colors.white,
  );
}

TextTheme textTheme() {
  ScreenUtil instance = ScreenUtil.getInstance();

  return TextTheme(
    title: TextStyle(
      fontWeight: FontWeight.w300,
      color: Colors.grey.shade100,
      fontSize: 28,
    ),
    subtitle: TextStyle(
      fontWeight: FontWeight.w200,
      color: Colors.grey[350],
      fontSize: 16,
      wordSpacing: -0.5,
    ),
  );
}
