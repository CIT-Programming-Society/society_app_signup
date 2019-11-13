import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    backgroundColor: Color(0xffAE0F40),
    fontFamily: 'Roboto',
    textTheme: textTheme(),
    buttonColor: Colors.white,
  );
}

TextTheme textTheme() {
  return TextTheme(
    title: TextStyle(
      fontWeight: FontWeight.w100,
      color: Colors.grey.shade100,
      fontSize: 28,
    ),
    subtitle: TextStyle(
      fontWeight: FontWeight.w200,
      color: Colors.grey.shade400,
      fontSize: 20,
    ),
  );
}
