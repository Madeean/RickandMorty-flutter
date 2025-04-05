import 'package:flutter/material.dart';
import 'package:rickandmortyapp/presentation/pages/home/HomeScreen.dart';
import 'package:rickandmortyapp/presentation/pages/splash/SplashScreen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('404: Page Not Found')),
        ),
      );
  }
}
