import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traval_app/config/style/colors.dart';
import 'package:traval_app/presentation/home/screen/home_screen.dart';

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
      title: 'Travel App',
      theme: kAppThemeData,
      home: const HomeScreen(),
    );
  }
}

final ThemeData kAppThemeData = _buildThemeData();

ThemeData _buildThemeData() {
  final base = ThemeData.light();
  final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);
  return base.copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: baseTextTheme.copyWith(
      titleLarge: baseTextTheme.titleLarge!.copyWith(
        height: 32.0 / 22.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      titleMedium: baseTextTheme.titleMedium!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: baseTextTheme.titleSmall!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyLarge: baseTextTheme.bodyLarge!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyMedium: baseTextTheme.bodyMedium!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodySmall: baseTextTheme.bodySmall!.copyWith(
        height: 15.0 / 12.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
    ),
  );
}
