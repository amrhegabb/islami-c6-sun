// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static const Color ligthprimaryColor = Color(0xFFB7935F);
  static const Color DarkPrimaryColor = Color(0xFFFACC1D);
  static const Color suraDetailsContainer = Color(0xCCF8F8F8);
  static const Color NavyColor = Color(0xff141A2E);

  static final ThemeData lightTheme = ThemeData(
      cardColor: Colors.white,
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: suraDetailsContainer),
      primaryColorDark: ligthprimaryColor,
      backgroundColor: suraDetailsContainer,
      hintColor: Colors.white,
      primaryColor: ligthprimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28, color: Colors.black),
          headline2: TextStyle(fontSize: 24, color: Colors.black),
          headline3: TextStyle(fontSize: 22, color: Colors.black),
          headline4: TextStyle(fontSize: 18, color: Colors.black),
          headline5: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          caption: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)));
  static final ThemeData DarkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: NavyColor),
      cardColor: Colors.black,
      backgroundColor: NavyColor.withOpacity(.8),
      hintColor: Colors.white,
      primaryColor: DarkPrimaryColor,
      primaryColorDark: NavyColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28, color: Colors.white),
          headline2: TextStyle(fontSize: 24, color: Colors.white),
          headline3: TextStyle(fontSize: 22, color: Colors.white),
          headline4: TextStyle(fontSize: 18, color: Colors.white),
          headline5: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          caption: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: DarkPrimaryColor,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 40,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)));
}
