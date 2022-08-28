import 'package:flutter/material.dart';
import 'routing/app_router.dart';
import 'constants/theme/app_theme.dart';
// screens
import 'screens/home_screen/home_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppTheme.refreshSystemOverlay();

  runApp(const WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatefulWidget {
  const WhatsAppCloneApp({super.key});

  @override
  State<WhatsAppCloneApp> createState() => _WhatsAppCloneAppState();
}

class _WhatsAppCloneAppState extends State<WhatsAppCloneApp> with WidgetsBindingObserver {

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
      title: 'WhatsApp Clone',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: HomeScreen.screen_id,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
