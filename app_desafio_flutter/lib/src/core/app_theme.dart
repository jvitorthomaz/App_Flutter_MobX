import 'package:app_desafio_flutter/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

sealed class AppTheme {
   static ThemeData themeData =ThemeData(
    primaryColor: const Color.fromARGB(51, 0, 0, 0),
    indicatorColor: AppColors.colorWhite,
    brightness: Brightness.light,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.colorBlack,
      labelStyle: TextStyle(color: AppColors.colorBlack),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.colorBlack)
      )
    ),
  );
}