import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lwha/core/utils/app_colors.dart';
import 'package:lwha/core/utils/app_string.dart';

// Function to define the app's theme data.
ThemeData appTheme() {
  return ThemeData(
 // Background color of the scaffold
  );
}
abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true, // Enable Material Design 3
    primaryColor: AppColors.withe, // Primary color for the app
    hintColor: AppColors.hint, // Color for hint texat
    brightness: Brightness.light, // Light theme brightness
    // Uncomment and set the font family if needed
    // fontFamily: AppString.fontFamily,
    appBarTheme: AppBarTheme(
      centerTitle: true, // Center the title in the app bar
      backgroundColor: AppColors.withe, // Background color of the app bar
      shadowColor: AppColors.withe, // Shadow color for the app bar
      surfaceTintColor: AppColors.withe, // Tint color for the surface
      elevation: 0, // No elevation for the app bar
      scrolledUnderElevation: 0, // No elevation when scrolled under
      titleTextStyle: TextStyle(
        fontSize: 20, // Font size for the app bar title
        color: AppColors.text100, // Color of the app bar title
        fontWeight: FontWeight.w500, // Font weight for the app bar title
        fontFamily: AppString.fontFamily, // Font family for the app bar title
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.withe, // Status bar color
        statusBarIconBrightness: Brightness.dark, // Status bar icon brightness (dark icons)
        statusBarBrightness: Brightness.light, // Status bar brightness (light background)
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.withe,
    hintColor: AppColors.hint, // Color for hint text
    brightness: Brightness.light, // Light theme brightness
    // Uncomment and set the font family if needed
    // fontFamily: AppString.fontFamily,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.withe,
      shadowColor: AppColors.withe,
      surfaceTintColor: AppColors.withe,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: AppColors.withe,
        fontWeight: FontWeight.w500,
        fontFamily: AppString.fontFamily,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.withe,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: Colors. black54,
  );
}
