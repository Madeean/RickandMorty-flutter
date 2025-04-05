import 'package:flutter/material.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

enum RoutePage {
  splash,
  home,
}

extension RoutePageExtension on RoutePage {
  String get path {
    switch (this) {
      case RoutePage.splash:
        return '/';
      case RoutePage.home:
        return '/home';
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