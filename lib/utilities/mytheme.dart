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
      scrolledUnderElevation:
          0.0, // To remove the elevation of appBar while scrollin down
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
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      labelSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      labelMedium: TextStyle(
        fontSize: 22,
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
    ),

    ///* ProgressIndicatorTheme :-
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: primaryLightColor,
    ),

    ///* IconThemeData :-
    iconTheme: IconThemeData(
      color: primaryLightColor,
    ),
  );
}
