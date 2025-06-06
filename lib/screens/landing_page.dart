import 'package:dash_app/screens/portfolio.dart';
import 'package:dash_app/widgets/tabs_mobile.dart';
import 'package:dash_app/widgets/tabs_web.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/images/background.png'),
              ),
            ),
            const SizedBox(height: 10),
            const TabsMobile('Home', 'Landing page'),
            const SizedBox(height: 20),
            const TabsMobile('Work', 'Error page'),
            const SizedBox(height: 20),
            const TabsMobile('Blog', 'Blog page'),
            const SizedBox(height: 20),
            const TabsMobile('About', 'About page'),
            const SizedBox(height: 20),
            const TabsMobile('Contact', 'Contact page'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_a_photo_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 25.0, color: Colors.brown),
        title: const Row(
          children: [
            Spacer(flex: 3),
            TabsWeb('Home'),
            // Spacer(),
            // TabsWeb('Works'),
            // Spacer(),
            // TabsWeb('Blog'),
            Spacer(),
            TabsWeb('About'),
            Spacer(),
            TabsWeb('Contact'),
            Spacer(),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: const Portfolio(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
