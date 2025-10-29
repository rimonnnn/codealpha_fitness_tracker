import 'package:fitness_tracher/pages/home/widgets/activity.dart';
import 'package:fitness_tracher/pages/home/widgets/current.dart';
import 'package:fitness_tracher/pages/home/widgets/header.dart';
import 'package:fitness_tracher/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Header(), Current(), Activity(), BottomNavigation()],
      ),
    );
  }
}
