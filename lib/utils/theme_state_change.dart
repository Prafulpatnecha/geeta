
import 'package:flutter/material.dart';
import 'package:geeta/utils/colors.dart';

class ThemeStateChange
{
  static ThemeData themeLight=ThemeData(
    appBarTheme: AppBarTheme(
      color: geetaColor,
    ),
    scaffoldBackgroundColor: geetaColor,
    // colorScheme: ColorScheme()
  );
  static ThemeData themeDark=ThemeData.dark().copyWith(
    cardTheme: CardTheme(color: Colors.brown.shade900)
  );
}