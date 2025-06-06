import 'package:flutter/material.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        // print('Entered');
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 600),
        curve: Curves.elasticIn,
        style: isSelected
            ? const TextStyle(
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.deepPurple,
                fontSize: 25,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
              )
            : const TextStyle(
                color: Colors.brown,
                fontSize: 23,
              ),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}
