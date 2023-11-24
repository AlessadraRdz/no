import 'package:flutter/material.dart';

const colorList = <Color>[
  Color.fromARGB(255, 31, 245, 24),
  Color.fromARGB(255, 15, 121, 241),
  Color.fromARGB(255, 252, 140, 35),
  Color.fromARGB(255, 220, 255, 23),
  Color.fromARGB(255, 191, 41, 250),
  Color.fromARGB(255, 248, 58, 58),
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false,
  }) : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'La selección de color no cumple con el rango de 0 asta ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
