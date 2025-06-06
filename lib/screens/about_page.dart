import 'package:dash_app/widgets/sans_bold.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.pink[100],
        centerTitle: true,
      ),
      body: ListView(
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
                  const SizedBox(height: 35),
                  const SansBold(' ABC Works ', 30),
                  const SizedBox(height: 40),
                  const Text(
                    'We are software solutions provider',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.deepPurple,
                        size: 24.0,
                      ),
                      SizedBox(width: 14.0),
                      SansBold('www.securemeters.com/enquiries', 20.0),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.deepPurple,
                        size: 24.0,
                      ),
                      SizedBox(width: 14.0),
                      SansBold(
                          'Udaipur, Rajasthan (India)               ', 20.0),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Center(
            child: CircleAvatar(
              radius: 167.0,
              backgroundColor: Colors.deepPurple,
              child: CircleAvatar(
                radius: 163.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 160.0,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage('assets/images/live-work-create.jpeg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
