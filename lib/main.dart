import 'package:flutter/material.dart';
import 'routing/app_router.dart';
import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(const Talkaholic());
}

class Talkaholic extends StatelessWidget {
  const Talkaholic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.screen_id,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
