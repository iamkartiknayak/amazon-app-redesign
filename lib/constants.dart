import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff242f40);

final kThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.grey.shade500,
      letterSpacing: 0.5,
    ),
    fillColor: Colors.red,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.orange),
    ),
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color(0xff242f40),
    indicatorColor: Color(0xff394550),
    surfaceTintColor: Colors.black,
    iconTheme: MaterialStatePropertyAll(
      IconThemeData(color: Colors.white),
    ),
    labelTextStyle: MaterialStatePropertyAll(
      TextStyle(color: Colors.white, fontSize: 12.0),
    ),
  ),
  iconTheme: const IconThemeData(size: 20.0),
);
