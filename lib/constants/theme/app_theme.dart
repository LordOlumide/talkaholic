import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color FloatingActionButtonColor = const Color(0xFF00a884);

  static Color lightBackgroundColor = const Color(0xFFf7f8fa);
  static Color lightPrimaryColor = const Color(0xFFffffff); // Also card colour
  static Color lightSecondaryColor = const Color(0xFF008069);
  static Color lightNotificationsColor = const Color(0xFF25d366);

  static Color darkBackgroundColor = const Color(0xFF0b141a);
  static Color darkPrimaryColor = const Color(0xFF111b21); // Also card colour
  static Color darkSecondaryColor = const Color(0xFF202c33);
  static Color darkNotificationsColor = const Color(0xFF00a884);

  const AppTheme._();

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: lightPrimaryColor,
      secondary: lightSecondaryColor,
      background: lightBackgroundColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: darkPrimaryColor,
      secondary: darkSecondaryColor,
      background: darkBackgroundColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static setStatusAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightBackgroundColor
          : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }

  static void refreshSystemOverlay() {
    AppTheme.currentSystemBrightness == Brightness.light
        ? AppTheme.setStatusAndNavigationBarColors(ThemeMode.light)
        : AppTheme.setStatusAndNavigationBarColors(ThemeMode.dark);
  }
}
