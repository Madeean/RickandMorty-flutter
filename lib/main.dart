import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/presentation/navigation/RouteGenerator.dart';
import 'package:rick_and_morty_new/presentation/navigation/RoutePage.dart';

import 'di/Injection.dart';

void main() {
  setupDI();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorObservers: [routeObserver],
      onGenerateRoute: onGenerateRoute,
      initialRoute: RoutePage.splash.path,
    );
  }
}
