import 'package:flutter/material.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

enum RoutePage { splash, home, about, episodeDetail, characterDetail }

extension RoutePageExtension on RoutePage {
  String get path {
    switch (this) {
      case RoutePage.splash:
        return '/';
      case RoutePage.home:
        return '/home';
      case RoutePage.about:
        return '/about';
      case RoutePage.episodeDetail:
        return '/detail/episode';
      case RoutePage.characterDetail:
        return '/detail/character';
    }
  }
}

class RoutePageHelper {
  static RoutePage fromPath(String? path) {
    return RoutePage.values.firstWhere(
      (e) => e.path == path,
      orElse: () => RoutePage.home,
    );
  }
}
