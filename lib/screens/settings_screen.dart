import 'package:dash_app/widgets/row_item.dart';
import 'package:dash_app/widgets/settings_block.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var networkProfileImagePath =
      'https://th.bing.com/th?id=OIP.PztowP3ljup0SM75tkDimQHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: 400,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(8, 8),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(networkProfileImagePath)),
                const Spacer(flex: 1),
                Text(
                  'Angelina Jones',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[800]),
                ),
                const Spacer(flex: 6),
                Icon(
                  Icons.edit,
                  color: Colors.blue[800],
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 300,
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(8, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                const RowItem(Icons.lock_outline_rounded, 'Password'),
                Divider(
                  color: Colors.grey[300],
                  thickness: 2,
                  height: 30,
                ),
                const RowItem(Icons.translate_rounded, 'Language'),
                Divider(
                  color: Colors.grey[300],
                  thickness: 2,
                  height: 30,
                ),
                const RowItem(Icons.location_pin, 'Location'),
              ],
            ),
          ),
          const SettingsBlock(),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomLeft, // Aligns the button to the bottom-left corner
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          backgroundColor: Colors.blue[100],
          shape: const CircleBorder(), // Circular shape
          child: const Icon(Icons.power_settings_new_rounded), // Optional: Add an icon inside the button
        ),
      )
    );
  }
}
