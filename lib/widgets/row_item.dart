import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const RowItem(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.blue[800],
        ),
        const Spacer(flex: 1),
        Text(
          'Change $text',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey[500]
          ),
        ),
        const Spacer(flex: 6),
        Icon(
          Icons.navigate_next_rounded,
          color: Colors.blue[300],
        ),
      ],
    );
  }
}
