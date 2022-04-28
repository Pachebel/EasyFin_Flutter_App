import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

var lightThemeData = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: TextStyle(
      color: HexColor("#666a7b"),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: HexColor("#666a7b"),
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.black,
    selectionColor: HexColor("#2b2e4a").withOpacity(0.5),
    selectionHandleColor: HexColor("#05c46b"),
  ),
  scaffoldBackgroundColor: HexColor("#fafafa"),
  primaryColor: HexColor("#fafafa"),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: 'lato',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: HexColor("#2b2e4a"),

      ///OPA Color

      /// "OPA" Color
    ),
    bodyText1: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
  iconTheme: IconThemeData(color: HexColor("#2b2e4a")),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(brightness: Brightness.light),
);

var darkThemeData = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: TextStyle(
      color: HexColor("#666a7b"),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: HexColor("#666a7b"),
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: HexColor("#fafafa").withOpacity(0.5),
      selectionHandleColor: Colors.white),
  scaffoldBackgroundColor: HexColor("#2b2e4a"),
  primaryColor: Colors.blue,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: 'lato',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(brightness: Brightness.dark),
);
