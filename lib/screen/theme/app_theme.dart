import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme() {
    // Definindo o esquema de cores
    const baseColorScheme = ColorScheme(
      primary: Colors.blueAccent,
      secondary: Color.fromARGB(255, 230, 155, 34),
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: baseColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: baseColorScheme.primary,
          foregroundColor: Colors.white,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: baseColorScheme.primary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: baseColorScheme.primary,
          side: const BorderSide(color: Colors.blueAccent),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        // ... e outros estilos de texto ...
      ),
      iconTheme: const IconThemeData(
        color: Colors.blueAccent,
        size: 24,
      ),
    );
  }
}
