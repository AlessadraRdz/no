import 'package:flutter/material.dart';
import 'package:triki_triki/config/theme/app_theme.dart';
import 'package:triki_triki/presentation/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).gettheme(),
        home: const HomeScreen());
  }
}
