import 'package:flutter/material.dart';

class SliderToggle extends StatefulWidget {
  final bool initialValue;
  final Color? activeColor;
  final Color? inactiveColor;
  final ValueChanged<bool> onToggle; // Callback when the toggle is changed

  const SliderToggle({
    super.key,
    this.initialValue = false,
    required this.activeColor,
    required this.inactiveColor,
    required this.onToggle,
  });

  @override
  State<SliderToggle> createState() =>
      _SliderToggleState();
}

class _SliderToggleState extends State<SliderToggle> {
  late bool isToggled;

  @override
  void initState() {
    super.initState();
    isToggled = widget.initialValue; // Set initial toggle value
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
        widget.onToggle(isToggled); // Call the callback with the new state
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 60,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isToggled ? widget.activeColor : widget.inactiveColor,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: isToggled ? 40 : 0,
              right: isToggled ? 0 : 40,
              child: Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
