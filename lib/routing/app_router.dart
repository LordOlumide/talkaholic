import 'package:flutter/material.dart';

// screens
import 'package:talkaholic/screens/home_screen/home_screen.dart';
import 'package:talkaholic/screens/chatting_screen/chatting_screen.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.screen_id:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case ChattingScreen.screen_id:
        return MaterialPageRoute(
            builder: (context) =>
                ChattingScreen(contactName: settings.arguments.toString()));
      default:
        throw Exception('Route not found!');
    }
  }
}
