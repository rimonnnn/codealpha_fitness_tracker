import 'package:fitness_tracher/models/fitness_program.dart';
import 'package:flutter/material.dart';

class Current extends StatefulWidget {
  const Current({super.key});

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {
  ProgramType active = fitnessPrograms[0].type;
  void _changeProgram(ProgramType newType) {
    setState(() {
      active = newType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Programs',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Icon(Icons.arrow_forward_ios, size: 15),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: fitnessPrograms.length,
            itemBuilder: (context, index) {
              return Program(
                program: fitnessPrograms[index],
                active: fitnessPrograms[index].type == active,
                onTap: _changeProgram,
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 20),
          ),
        ),
      ],
    );
  }
}

class Program extends StatelessWidget {
  final FitnessProgram program;
  final bool active;
  final Function(ProgramType) onTap;
  const Program({
    super.key,
    required this.program,
    this.active = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(program.type);
      },
      child: Container(
        width: 180,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              active
                  // ignore: deprecated_member_use
                  ? Color(0xff1ebdf8).withOpacity(.8)
                  // ignore: deprecated_member_use
                  : Colors.white.withOpacity(.8),
              BlendMode.lighten,
            ),
            image: program.image,
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(10, 50, 50, 0),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(program.name),
              Row(
                children: [
                  Text(program.cals),
                  SizedBox(width: 15),
                  Icon(
                    Icons.timer,
                    color: active ? Colors.white : Colors.black,
                    size: 10,
                  ),
                  SizedBox(width: 5),
                  Text(program.time),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
