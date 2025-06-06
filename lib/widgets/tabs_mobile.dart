import 'package:flutter/material.dart';

class TabsMobile extends StatefulWidget {
  final String heading;
  final String route;

  const TabsMobile(this.heading, this.route, {super.key});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.brown,
      height: 50.0,
      minWidth: 200.0,
      child: Text(
        widget.heading,
        style: TextStyle(
          color: Colors.pink[50],
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}
