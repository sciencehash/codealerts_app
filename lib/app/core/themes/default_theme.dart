import 'package:flutter/material.dart';
import 'package:codealerts_app/app/core/themes/text_theme.dart';

class DefaultTheme {
  static ThemeData data = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.compact,
    scaffoldBackgroundColor: Color(0xFFEEEEEE),
    accentColor: Colors.blueAccent,
    textTheme: textTheme.copyWith(
      headline2: textTheme.headline2!.copyWith(
        color: Colors.black,
      ),
      headline4: textTheme.headline4!.copyWith(
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black87,
      ),
      actionsIconTheme: IconThemeData(
        color: Color(0xff555555),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black87,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.black87,
      selectedItemColor: Colors.blue.shade900,
      backgroundColor: Colors.white,
      elevation: 0,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 7,
      shadowColor: Colors.black38,
    ),
    dividerColor: Colors.black12,
    tooltipTheme: TooltipThemeData(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.9),
        borderRadius: BorderRadius.circular(4),
      ),
      textStyle: TextStyle(fontSize: 14, height: 1, color: Colors.white),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.blueAccent),
      trackColor: MaterialStateProperty.all(Colors.black12),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
    ),
  );
}
