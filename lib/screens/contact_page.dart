import 'package:dash_app/widgets/sans_bold.dart';
import 'package:dash_app/widgets/tabs_web.dart';
import 'package:dash_app/widgets/text_box.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: const Text('Contact'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.brown[700],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/contact_image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Row(
                children: [
                  Spacer(flex: 2),
                  TabsWeb('Home'),
                  Spacer(),
                  TabsWeb('Work'),
                  Spacer(),
                  TabsWeb('About'),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              const TextBox(
                  text: 'Enter Company Name',
                  hintText: 'ABC Works Ltd.',
                  containerWidth: 300,
                  maxLines: 1),
              const SizedBox(height: 10.0),
              const TextBox(
                  text: 'Enter Email',
                  hintText: 'abc@email.com',
                  containerWidth: 300,
                  maxLines: 1),
              const SizedBox(height: 10.0),
              const TextBox(
                  text: 'Enter Query',
                  hintText: 'Costing related, Installation related...',
                  containerWidth: 300,
                  maxLines: 5),
              const SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[50],
                    foregroundColor: Colors.brown[800]),
                onPressed: () {
                  Navigator.of(context).pushNamed('Home page');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
