import 'package:flutter/material.dart';
import 'package:remind_me/features/home/presentation/page/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget
    return const HomeScreen();
  }
}
