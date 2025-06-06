import 'package:dash_app/widgets/card.dart';
import 'package:dash_app/widgets/sans_bold.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              SansBold('What we do', 20),
              CardSection(
                'App UI',
                'assets/images/app.png',
                'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
              ),
              CardSection(
                'Desktop Apps',
                'assets/images/webL.png',
                'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
              ),
              CardSection(
                'Mobile Apps',
                'assets/images/background.png',
                'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
