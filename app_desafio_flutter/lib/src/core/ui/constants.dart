import 'package:flutter/material.dart';

sealed class AppColors {
  static const primaryColor = Color.fromRGBO(188, 76, 241, 1);
  static const buttonColor = Color.fromRGBO(188, 76, 241, 0.2);
  static const colorGrey = Colors.grey;

  static const colorRed = Colors.red;
  static const colorBlack = Colors.black;
  static const colorWhite = Colors.white;
  static const lightGrey = Color.fromARGB(255, 230, 230, 230);
  static const dividerGrey = Color.fromRGBO(230, 230, 230, 1);

}

sealed class AppFonts {
  static const fontPopins = 'Poppins';
}

sealed class AppImages {
  static const imgLogo = 'assets/images/img_logo.png';  
}
