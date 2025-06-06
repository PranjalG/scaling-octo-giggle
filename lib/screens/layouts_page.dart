import 'dart:math';
import 'package:flutter/material.dart';

class LayoutsPage extends StatefulWidget {
  const LayoutsPage({super.key});

  @override
  State<LayoutsPage> createState() => _LayoutsPageState();
}

class _LayoutsPageState extends State<LayoutsPage> {
  List backgroundColors = [
    Colors.brown,
    Colors.teal,
    Colors.tealAccent,
    Colors.green,
    Colors.greenAccent,
    Colors.brown,
    Colors.deepPurple,
    Colors.pink,
    Colors.grey,
    Colors.purple,
    Colors.pinkAccent,
  ];

  int index = 0;
  var colAlignment = MainAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layouts'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: 600,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [backgroundColors[index], Colors.white],
                      radius: 1,
                      focal: const Alignment(0.1, 0.2),
                      // position of the gradient focus
                      focalRadius: 0.05,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 100,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = Random().nextInt(backgroundColors.length);
                    });
                  },
                  child: const Text('Change Background Color'),
                ),
              ),
            ],
          ),
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            height: 24,
            width: 600,
            child: Text(
              textAlign: TextAlign.center,
              'Change Alignment',
              style: TextStyle(color: Colors.brown[800], fontSize: 18),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      colAlignment = MainAxisAlignment.start;
                    });
                  },
                  child: const Text('Start'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      colAlignment = MainAxisAlignment.center;
                    });
                  },
                  child: const Text('Center'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      colAlignment = MainAxisAlignment.end;
                    });
                  },
                  child: const Text('End'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: colAlignment,
              children: [
                Image.asset(
                  'assets/images/live-work-create.jpeg',
                  width: 80,
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Image.asset(
                  'assets/images/live-work-create.jpeg',
                  width: 80,
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Image.asset(
                  'assets/images/live-work-create.jpeg',
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
