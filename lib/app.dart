import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash_screen.dart';
import 'screens/main_scaffold.dart';

class HaiPhatApp extends StatelessWidget {
  const HaiPhatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hải Phát IDC',
      theme: AppTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MainScaffold(),
      },
    );
  }
}
