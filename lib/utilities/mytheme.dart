/// A cutom theme for :
/// light mode - dark mode - fonts - colors
import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = const Color(0xff242424);
  static Color primaryLightColor = const Color(0xffB7935F);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLightColor,

      ///* AppBarTheme :-
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      scaffoldBackgroundColor: Colors.transparent,

      ///* TextTheme :-
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),

      /// backgroundColor in `BottomNavigationBar` has a bug 🪲
      //// bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: primaryLightColor,
      ///* BottomNavigationBarTheme :-
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(size: 44),
        unselectedIconTheme: const IconThemeData(size: 43),
        showUnselectedLabels: false,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ));
}
