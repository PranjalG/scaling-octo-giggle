import 'package:dash_app/widgets/card.dart';
import 'package:dash_app/widgets/sans_bold.dart';
import 'package:dash_app/widgets/text_box.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Hi',
                          style: TextStyle(
                            color: Colors.pink[100],
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const SansBold(' ABC Works ', 22),
                const SizedBox(height: 10),
                const SansBold('We are software solutions provider', 14),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                      size: 14.0,
                    ),
                    SizedBox(width: 14.0),
                    SansBold('www.securemeters.com/enquiries', 10.0),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.deepPurple,
                      size: 14.0,
                    ),
                    SizedBox(width: 14.0),
                    SansBold('Udaipur, Rajasthan (India)               ', 10.0),
                  ],
                ),
              ],
            ),
            const CircleAvatar(
              radius: 67.0,
              backgroundColor: Colors.deepPurple,
              child: CircleAvatar(
                radius: 63.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage('assets/images/live-work-create.jpeg'),
                ),
              ),
            ),
          ],
        ),
        const CardSection(
          'About',
          'assets/images/app.png',
          'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
        ),
        const CardSection(
          'Work',
          'assets/images/webL.png',
          'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
        ),
        const CardSection(
          'Blog',
          'assets/images/background.png',
          'To offset the shadow horizontally, the dx value is changed. A positive offset moves the shadow to the right of the box, while a negative offset moves the shadow to the left of the box.',
        ),
        const SizedBox(height: 80),
        const Center(
          child: Column(
            children: [
              SansBold('Contact', 30),
              SizedBox(height: 40),
              TextBox(
                  text: 'Enter Company Name',
                  hintText: 'ABC Works Ltd.',
                  containerWidth: 300,
                  maxLines: 1),
              SizedBox(height: 10.0),
              TextBox(
                  text: 'Enter Email',
                  hintText: 'abc@email.com',
                  containerWidth: 300,
                  maxLines: 1),
              SizedBox(height: 20.0),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
          child: SansBold('Enter your question', 14),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 100.0),
      ],
    );
  }
}
