import 'dart:math';

import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent Activites",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => ActivityItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key});

  static const activites = [
    "Walking",
    "Running",
    "Cycling",
    "Swimming",
    "Yoga",
    "Hiking",
    "Gym Workout",
  ];

  @override
  Widget build(BuildContext context) {
    String activite = activites[Random().nextInt(activites.length)];
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/details");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe1e1e1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffcff2ff),
              ),
              height: 35,
              width: 35,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/running.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Text(
              activite,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Expanded(child: SizedBox()),
            Icon(Icons.timer, size: 12),
            SizedBox(width: 5),
            Text(
              "30min",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
            SizedBox(width: 10),
            Icon(Icons.wb_sunny_outlined, size: 12),
            SizedBox(width: 5),
            Text(
              "55kcal",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
