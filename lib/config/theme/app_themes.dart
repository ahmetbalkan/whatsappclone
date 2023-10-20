import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsappclone/core/constants/color_constants.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF1EBE71),
    primaryColorLight: const Color(0xFF1EBE71),
    primaryColorDark: const Color(0xFF1EBE71),
    hoverColor: const Color(0xFF1EBE71),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black, fontFamily: 'Geometria'),
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1EBE71),
        textStyle: TextStyle(
          fontFamily: 'Geometria',
          fontSize: 14.sp,
          color: Colors.white,
        ),
        minimumSize: const Size(130, 60),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'Geometria',
          fontSize: 14.sp,
          color: primaryColor,
        ),
        minimumSize: const Size(130, 60),
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1EBE71))),
    ),
    // Diğer widget stil tanımlamaları...
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF1EBE71),
    scaffoldBackgroundColor: const Color(0xFF1a1a1c),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontFamily: 'Geometria'),
      backgroundColor: Color(0xFF1a1a1c),
      elevation: 0,
      toolbarHeight: 100,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1EBE71),
        textStyle: TextStyle(
          fontFamily: 'Geometria',
          fontSize: 14.sp,
          color: Colors.white,
        ),
        minimumSize: const Size(130, 60),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'Geometria',
          fontSize: 14.sp,
          color: Colors.white,
        ),
        minimumSize: const Size(130, 60),
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Geometria',
        color: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1EBE71))),
    ),
  );
}
