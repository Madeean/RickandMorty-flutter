import 'package:flutter/material.dart';
import 'package:rickandmortyapp/presentation/pages/home/HomeScreen.dart';
import 'package:rickandmortyapp/presentation/pages/settings/about/AboutThisAppScreen.dart';
import 'package:rickandmortyapp/presentation/pages/splash/SplashScreen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case '/about':
      return MaterialPageRoute(builder: (_) => const AboutThisAppScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('404: Page Not Found')),
        ),
      );
  }
}
