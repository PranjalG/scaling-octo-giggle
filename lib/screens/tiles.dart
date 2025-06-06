import 'package:flutter/material.dart';

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  List tileColors = List.generate(
      60,
      (index) => index % 3 == 0
          ? Colors.lightBlue
          : index % 2 == 0
              ? Colors.green
              : Colors.amber);

  void changeColorTemporarily(int index) {
    setState(() {
      tileColors[index] = Colors.white; // Change the color to white
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        tileColors[index] = index % 3 == 0
            ? Colors.lightBlue
            : index % 2 == 0
                ? Colors.green
                : Colors.amber;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiles'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.brown.shade50,
      body: Center(
        child: Wrap(
          children: List.generate(60, (index) {
            return GestureDetector(
              onTap: () {
                changeColorTemporarily(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tileColors[index],
                    gradient: RadialGradient(
                      center: const Alignment(0, 0),
                      radius: 0.5,
                      colors: [
                        Colors.white,
                        tileColors[index],
                      ],
                    ),
                    // LinearGradient(
                    //   colors: [
                    //     Colors.black,
                    //     tileColors[index],
                    //     tileColors[index],
                    //   ],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight
                    // )
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.restart_alt), label: 'Restart')
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Tiles()),
            );
          }
        },
      ),
    );
  }
}
