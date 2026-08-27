import 'dart:math' as math;

import 'package:flutter/material.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  Widget buildCircleButton(IconData icon) {
    return GestureDetector(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF172946),
          shape: BoxShape.circle,
        ),

        child: Center(
          child: Icon(
            icon,
            size: 25,
            fontWeight: FontWeight.normal,

            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CONTROLLER',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172946),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCircleButton(Icons.keyboard_double_arrow_up_rounded),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildCircleButton(Icons.keyboard_double_arrow_left_rounded),
                    Image.asset(
                      'assets/images/car.png',
                      width: 319,
                      height: 150,
                    ),
                    buildDiamondButton(
                      Icons.keyboard_double_arrow_right_rounded,
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDiamondButton(
                      Icons.keyboard_double_arrow_down_rounded,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
