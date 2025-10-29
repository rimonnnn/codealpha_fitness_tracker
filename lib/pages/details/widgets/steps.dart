import 'package:fitness_tracher/widgets/helpers.dart';
import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    String steps = formatNumber(rendomBetween(3000, 6000));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            steps,
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
          Text(
            "Total Steps",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
