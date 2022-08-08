// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static const Color colorGold = Color(0xFFB7935F);
  static const Color colorYellow = Color(0xFFFACC1D);
  static const Color suraDetailsContainer = Color(0xCCF8F8F8);

  static final ThemeData lightTheme = ThemeData(
      primaryColorLight: suraDetailsContainer,
      hintColor: Colors.white,
      primaryColor: colorGold,
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
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)));

  static final ThemeData DarkTheme = ThemeData(
      primaryColorLight: suraDetailsContainer,
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 28, color: Colors.black),
        headline2: TextStyle(fontSize: 24, color: Colors.black),
        headline3: TextStyle(fontSize: 22, color: Colors.black),
        headline4: TextStyle(fontSize: 18, color: Colors.black),
        headline5: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)));
}
