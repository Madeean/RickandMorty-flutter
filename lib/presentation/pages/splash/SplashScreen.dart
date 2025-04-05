import 'package:flutter/material.dart';
import 'package:rickandmortyapp/presentation/navigation/RoutePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutePage.home.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF50CE8A), Color(0xFF5066CE)],
                begin: Alignment.topLeft,
                end: AlignmentDirectional.bottomEnd),
          ),
          child: Center(
            child: Image.asset('assets/rickandmorty.png'),
          )),
    );
  }
}
