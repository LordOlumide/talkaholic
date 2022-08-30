import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color floatingActionButtonColor = const Color(0xFF00a884);

  static Color lightBackgroundColor = const Color(0xFFf7f8fa);
  static Color lightPrimaryColor = const Color(0xFFffffff); // Also card colour
  static Color lightSecondaryColor = const Color(0xFF008069);
  static Color lightNotificationsColor = const Color(0xFF25d366);
  static Color lightTabBarSelectedColor = const Color(0xFFffffff);
  static Color lightTabBarUnselectedColor = const Color(0xFFb3d9d2);
  static Color lightAppBarIconColor = const Color(0xFFffffff);
  static Color lightAppBarTitleColor = const Color(0xFFffffff);
  static Color lightModeBlackText = const Color(0xFF111B21);
  static Color lightModeGreyText = const Color(0xFF667781);

  static Color darkBackgroundColor = const Color(0xFF0b141a);
  static Color darkPrimaryColor = const Color(0xFF111b21); // Also card colour
  static Color darkSecondaryColor = const Color(0xFF202c33);
  static Color darkNotificationsColor = const Color(0xFF00a884);
  static Color darkTabBarSelectedColor = const Color(0xFF00a884);
  static Color darkTabBarUnselectedColor = const Color(0xFF8696a0);
  static Color darkAppBarIconColor = const Color(0xFF8696a0);
  static Color darkAppBarTitleColor = const Color(0xFF8696a0);
  static Color darkModeWhiteText = const Color(0xFFE9EDEF);
  static Color darkModeGreyText = const Color(0xFF8696A0);

  const AppTheme._();

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: lightPrimaryColor,
      secondary: lightSecondaryColor,
      background: lightBackgroundColor,
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      titleLarge: TextStyle( // currently used for header text in HomeScreenAppBar
        color: lightAppBarTitleColor,
      ),
      bodyLarge: TextStyle( // currently used for contactName in chat_contact_template
        color: lightModeBlackText,
      ),
      bodyMedium: TextStyle( // currently used in chat_contact_template
        color: lightModeGreyText,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: lightTabBarSelectedColor,
      unselectedLabelColor: lightTabBarUnselectedColor,
      labelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: lightAppBarIconColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: floatingActionButtonColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: darkPrimaryColor,
      secondary: darkSecondaryColor,
      background: darkBackgroundColor,
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      titleLarge: TextStyle(
        color: darkAppBarTitleColor,
      ),
      bodyLarge: TextStyle(
        color: darkModeWhiteText,
      ),
      bodyMedium: TextStyle(
        color: darkModeGreyText,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: darkTabBarSelectedColor,
      unselectedLabelColor: darkTabBarUnselectedColor,
      labelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: darkAppBarIconColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: floatingActionButtonColor,
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
