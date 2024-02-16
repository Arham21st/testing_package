import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  bool start = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? 0.32 : 1,
                  start ? 8 : -1,
                ),
                duration: const Duration(milliseconds: 1000),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      start = !start;
                    });
                  },
                  child: AnimatedContainer(
                    curve: Curves.slowMiddle,
                    duration: const Duration(milliseconds: 1000),
                    width: 100,
                    height: 100,
                    color: start ? Colors.deepPurple : Colors.blueAccent,
                    child: const Center(child: Text('Rotated')),
                  ),
                ),
              ),
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? -0.32 : -1,
                  start ? 2 : -7,
                ),
                duration: const Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 1000),
                  width: 100,
                  height: 100,
                  color: start ? Colors.red : Colors.tealAccent,
                  child: const Center(child: Text('Rotated')),
                ),
              ),
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? 0.32 : 1,
                  0,
                ),
                duration: const Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 1000),
                  width: 100,
                  height: 100,
                  color: start ? Colors.pink : Colors.amberAccent,
                  child: const Center(child: Text('Rotated')),
                ),
              ),
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? -0.32 : -1,
                  -6,
                ),
                duration: const Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 1000),
                  width: 100,
                  height: 100,
                  color: start ? Colors.green.shade900 : Colors.blueGrey,
                  child: const Center(child: Text('Rotated')),
                ),
              ),
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? 0.32 : 1,
                  start ? -8 : 1,
                ),
                duration: const Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 1000),
                  width: 100,
                  height: 100,
                  color: start ? Colors.yellow : Colors.lightGreen,
                  child: const Center(child: Text('Rotated')),
                ),
              ),
              AnimatedAlign(
                heightFactor: 1.5,
                curve: start ? Curves.elasticOut : Curves.slowMiddle,
                alignment: Alignment(
                  start ? -0.32 : -1,
                  start ? -14 : -5,
                ),
                duration: const Duration(milliseconds: 1000),
                child: AnimatedContainer(
                  curve: Curves.slowMiddle,
                  duration: const Duration(milliseconds: 1000),
                  width: 100,
                  height: 100,
                  color: start ? Colors.lightGreenAccent : Colors.deepPurple,
                  child: const Center(child: Text('Rotated')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
