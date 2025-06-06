import 'package:dash_app/widgets/animated_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.pink[50],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const AnimatedBox(
                imagePath: 'assets/images/blog.jpg',
                text: 'Animated Box',
                reverse: true,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Layouts page');
                },
                child: const Text('Layouts Page >>'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Landing page');
                },
                child: const Text('Landing Page >>'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('List Viewer page');
                },
                child: const Text('List Viewer >>'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Settings page');
                },
                child: const Text('Settings >>'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Tiles page');
                },
                child: const Text('Tiles >>'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Payments page');
                },
                child: const Text('Payments page >>'),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: const Icon(Icons.arrow_back),
      // ),
    );
  }
}
