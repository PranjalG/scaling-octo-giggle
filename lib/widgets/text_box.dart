import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final String hintText;
  final double containerWidth;
  final int maxLines;

  const TextBox({
    required this.text,
    required this.hintText,
    required this.containerWidth,
    required this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            width: containerWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(5, 8), // Shadow position
                ),
              ],
            ),
            child: TextFormField(
              maxLines: maxLines,
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: Colors.brown, // Label text color
                ),
                hintText: hintText,
                // The hint text
                hintStyle: const TextStyle(color: Colors.grey),
                // Hint text color
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.brown, // Border color
                    width: 2, // Border width
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
