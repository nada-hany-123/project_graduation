import 'package:flutter/material.dart';
class AppTheme {
  static Color primaryColor = Color(0xFF5D9CEC);
  static Color backgroundColorLight = Color(0xFFDFECDB);
  static Color backgroundColorDark = Color(0xFF060e1e);
  static Color greenColor = Color(0xFF61E757);
  static Color redColor = Color(0xFFEC4B4B);
  static Color blackColor = Color(0xFF141922);
  static Color greyColor = Color(0xFFC8C9CB);
  static Color white = Colors.white;
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColorLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:primaryColor,
      backgroundColor: white,
      unselectedItemColor: greyColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),

    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: white,
        )
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black),
        bodyMedium: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor),
        bodySmall:TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: blackColor,
        )
    ),
  );
  static ThemeData darkTheme =
  ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:primaryColor,
      backgroundColor: backgroundColorDark,
      unselectedItemColor: blackColor,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: backgroundColorDark,
        )
    ),
    textTheme: TextTheme(
        headlineSmall: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w400,
            color: white),
        titleLarge:TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: white,
        )
    ),
  );
}
