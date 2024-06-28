import 'package:flutter/material.dart';

sealed class AppTheme {
   static ThemeData themeData =ThemeData(
    primaryColor: const Color.fromARGB(51, 0, 0, 0),
    indicatorColor: const Color.fromARGB(255, 255, 255, 255),
    brightness: Brightness.light,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      labelStyle: TextStyle(color: Colors.black),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.black)
      )
    ),
  );
}