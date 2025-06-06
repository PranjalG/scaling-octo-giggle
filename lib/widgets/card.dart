import 'package:dash_app/widgets/sans_bold.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  final String title;
  final String image;
  final String text;

  const CardSection(this.title, this.image, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.shade50,
                border: Border.all(),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    SansBold(title, 30),
                    const SizedBox(height: 10),
                    Image(
                        image: AssetImage(image),
                        height: 100),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        text,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
