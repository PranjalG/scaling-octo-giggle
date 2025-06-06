import 'package:dash_app/widgets/slider_toggle.dart';
import 'package:flutter/material.dart';

class SettingsBlock extends StatefulWidget {
  const SettingsBlock({super.key});

  @override
  State<SettingsBlock> createState() => _SettingsBlockState();
}

class _SettingsBlockState extends State<SettingsBlock> {
  final Color? _activeColor = Colors.blueGrey[500];
  final Color? _inActiveColor = Colors.blueGrey[200];
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 10, right: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              Text(
                'Notification Settings',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Receive App Notifications',
                style: TextStyle(
                    color: isToggled ? _inActiveColor : _activeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SliderToggle(
                  activeColor: _activeColor,
                  inactiveColor: _inActiveColor,
                  onToggle: (isToggled) {
                    isToggled = !isToggled;
                  }),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Receive Newsletter Notification',
                style: TextStyle(
                    color: isToggled ? _inActiveColor : _activeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SliderToggle(
                  activeColor: _activeColor,
                  inactiveColor: _inActiveColor,
                  onToggle: (isToggled) {
                    isToggled = !isToggled;
                  }),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Receive Offer Notification',
                style: TextStyle(
                    color: isToggled ? _inActiveColor : _activeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SliderToggle(
                  activeColor: _activeColor,
                  inactiveColor: _inActiveColor,
                  onToggle: (isToggled) {
                    isToggled = !isToggled;
                  }),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Receive App Updates',
                style: TextStyle(
                    color: isToggled ? _inActiveColor : _activeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SliderToggle(
                  activeColor: _activeColor,
                  inactiveColor: _inActiveColor,
                  onToggle: (isToggled) {
                    isToggled = !isToggled;
                  }),
            ],
          ),
          // Row(
          //   children: [
          //     Text(' Receive Offer Notification '),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Icon(Icons.access_alarm),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 20),
          // Row(
          //   children: [
          //     Text('Receive App Updates'),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Icon(Icons.access_alarm),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
