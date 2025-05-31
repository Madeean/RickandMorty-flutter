import 'package:flutter/material.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/detail/EpisodeDetailScreen.dart';

import '../../domain/episode/model/EpisodeDomainModel.dart';
import '../pages/home/HomeScreen.dart';
import '../pages/settings/about/AboutThisAppScreen.dart';
import '../pages/splash/SplashScreen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case '/about':
      return MaterialPageRoute(builder: (_) => const AboutThisAppScreen());
    case '/detail/episode':
      // Ambil arguments dari settings
      final episode = settings.arguments as EpisodeDetailDomainModel?;
      if (episode != null) {
        return MaterialPageRoute(
          builder: (_) => EpisodeDetailScreen(episode: episode),
        );
      }
      // Jika tidak ada arguments, tampilkan halaman error atau redirect
      return MaterialPageRoute(
        builder:
            (_) => const Scaffold(
              body: Center(child: Text('Error: No episode data provided')),
            ),
      );
    default:
      return MaterialPageRoute(
        builder:
            (_) => const Scaffold(
              body: Center(child: Text('404: Page Not Found')),
            ),
      );
  }
}
