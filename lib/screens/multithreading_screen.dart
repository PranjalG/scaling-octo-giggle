import 'dart:isolate';

import 'package:flutter/material.dart';

void multithreadingFunction(int n) {
  int _count = 0;
  for (int i = 0; i < n; i++) {
    _count++;
    if (_count % 2 == 0) print(_count.toString());
  }
}

class MultithreadingScreen extends StatefulWidget {
  const MultithreadingScreen({super.key});

  @override
  State<MultithreadingScreen> createState() => _MultithreadingScreenState();
}

class _MultithreadingScreenState extends State<MultithreadingScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter multithreading"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Isolate.spawn(multithreadingFunction, 100);
          setState(() {
            _counter++;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
