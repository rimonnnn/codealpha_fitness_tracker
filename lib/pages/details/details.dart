import 'package:fitness_tracher/pages/details/widgets/appbar.dart';
import 'package:fitness_tracher/pages/details/widgets/dates.dart';
import 'package:fitness_tracher/pages/details/widgets/graph.dart';
import 'package:fitness_tracher/pages/details/widgets/info.dart' hide Stats;
import 'package:fitness_tracher/pages/details/widgets/stats.dart';
import 'package:fitness_tracher/pages/details/widgets/steps.dart';
import 'package:fitness_tracher/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(appBar: AppBar()),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Divider(height: 30),
          Stats(),
          SizedBox(height: 30),
          BottomNavigation(),
        ],
      ),
    );
  }
}
