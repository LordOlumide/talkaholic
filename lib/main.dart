import 'package:flutter/material.dart';
import 'routing/app_router.dart';
import 'constants/theme/app_theme.dart';
// screens
import 'screens/home_screen/home_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppTheme.refreshSystemOverlay();

  runApp(const TalkaholicApp());
}

class TalkaholicApp extends StatefulWidget {
  const TalkaholicApp({super.key});

  @override
  State<TalkaholicApp> createState() => _TalkaholicAppState();
}

class _TalkaholicAppState extends State<TalkaholicApp> with WidgetsBindingObserver {

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    AppTheme.refreshSystemOverlay();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talkaholic',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: HomeScreen.screen_id,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
